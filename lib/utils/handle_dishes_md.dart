import 'dart:convert';
import 'dart:io';

import 'package:how_to_cook_parser/models/dishes.dart';
import 'package:how_to_cook_parser/utils/singleton.dart';
import 'package:how_to_cook_parser/utils/utils.dart';
import 'package:isar/isar.dart';
import 'package:markdown/markdown.dart' as md;
import 'package:how_to_cook_parser/utils/markdown_ast_serializer.dart';
import 'package:yaml/yaml.dart';

class CategoryNode {
  final String label;
  final int priority;

  CategoryNode(this.label, this.priority);
}

class DishesMarkDownUtil {
  late Isar _isar;
  Map<String, CategoryNode> categories = {};
  List<String> exceptCategories = [];

  init() async {
    _isar = await Isar.open(
      schemas: [DishSchema],
      directory: './build/db/dishes',
      // inspector: true,
      name: 'dishes_${Singleton().currentRepoCommitId}',
    );
    var configsYaml = loadYaml(File('./configs.yaml').readAsStringSync());
    (configsYaml['categories'] as Map).forEach((key, value) {
      categories[key] = CategoryNode(value['label'], value['priority']);
    });
    exceptCategories = configsYaml['excepts'].map<String>((e) => e.toString()).toList();
  }

  Future<bool> finish() async => _isar.close();

  Future<bool> handleDishesMD(String path) async {
    Singleton().currentDishPath = path;
    var category = getCategory(path);
    if (exceptCategories.contains(category)) return true;

    if (!categories.keys.contains(category)) {
      print('Unknown category : $category');
      return false;
    }

    var _categoryNode = categories[category]!;

    var processResult = Process.runSync(
        'bash', ['-c', 'git log -1 --format="%ad" --date=iso -- "${path.replaceFirst('./HowToCook/', '')}"'],
        workingDirectory: './HowToCook', runInShell: true);

    var hasFix = await File('$path.fixed').exists();
    return MarkdownParser().parse('$path${hasFix ? '.fixed' : ''}').then((dish) async {
      if (dish == null) return false;
      dish.updatedAt = DateTime.parse(processResult.stdout.toString().trim());
      dish.hash = computeHash([dish.summary, dish.ingredients, dish.formula, dish.steps, dish.extra].join());
      dish.category = _categoryNode.label;
      dish.priority = _categoryNode.priority;
      await _isar.writeTxn((isar) async {
        await isar.dishes.put(dish, replaceOnConflict: true);
      });
      return true;
    });
  }

  Future dumpToJson() async => _isar.dishes.where().findAll().then((res) {
        var dishes = {};
        for (var e in res) {
          dishes[e.name] = {
            'id': e.id,
            'hash': e.hash,
            'category': e.category,
            'priority': e.priority,
            'name': e.name,
            'updated_at': e.updatedAt.toIso8601String(),
            'summary': e.summary,
            'ingredients': e.ingredients,
            'formula': e.formula,
            'steps': e.steps,
            'extra': e.extra,
          };
        }
        String resJson = json.encode({
          'commitId': Singleton().currentRepoCommitId,
          'dishes': dishes,
        });
        var file = File('./build/dishes.json');
        if (!file.existsSync()) file.createSync(recursive: true);
        return file.writeAsString(resJson);
      });
}

enum ParseStatus {
  none,
  summary,
  ingredients,
  formula,
  steps,
  extra,
}

class MarkdownParser {
  bool hasTitle = false;
  bool hasIngredients = false;
  bool hasFormula = false;
  bool hasSteps = false;
  bool hasExtra = false;

  final Dish _dish = Dish.init();
  ParseStatus _status = ParseStatus.none;

  Future<Dish?> parse(String path) async {
    var file = File(path);
    var mdContent = await file.readAsLines();
    md.Document document = md.Document(encodeHtml: false);
    for (var blockNode in document.parseLines(mdContent).whereType<md.Element>()) {
      _handleBlockNode(blockNode);
    }

    if (!(hasTitle && hasIngredients && hasSteps)) {
      print('[Error] $path title: $hasTitle ingredients: $hasIngredients steps: $hasSteps');
      return null;
    } else if (!(hasFormula && hasExtra)) {
      print('[Warning] $path formula: $hasFormula extra: $hasExtra');
    }
    if (path.endsWith('.fixed')) file.delete();
    return _dish;
  }

  _handleBlockNode(md.Element node) {
    if (node.tag.startsWith(RegExp(r'h\d'))) {
      var text = node.textContent;
      bool skipThis = true;
      if (!hasTitle) {
        hasTitle = true;
        _dish.name = text.replaceAll('的做法', '');
        _status = ParseStatus.summary;
      } else if (!hasIngredients && RegExp('原料.?工具\$').hasMatch(text.trim())) {
        hasIngredients = true;
        _status = ParseStatus.ingredients;
      } else if (!hasFormula && text.trim() == '计算') {
        hasFormula = true;
        _status = ParseStatus.formula;
      } else if (!hasSteps && text.trim() == '操作') {
        hasSteps = true;
        _status = ParseStatus.steps;
      } else if (!hasExtra && text.trim() == '附加内容') {
        hasExtra = true;
        _status = ParseStatus.extra;
      } else {
        skipThis = false;
      }
      if (skipThis) return;
    }
    var mdContent = mdASTSerialize(node);
    if (mdContent == null) return;
    switch (_status) {
      case ParseStatus.summary:
        _dish.summary = (_dish.summary ?? '') + mdContent;
        return;
      case ParseStatus.ingredients:
        _dish.ingredients += mdContent;
        return;
      case ParseStatus.formula:
        _dish.formula = (_dish.formula ?? '') + mdContent;
        return;
      case ParseStatus.steps:
        _dish.steps += mdContent;
        return;
      case ParseStatus.extra:
        _dish.extra = (_dish.extra ?? '') + mdContent;
        return;
      case ParseStatus.none:
        return;
    }
  }
}

main() async {
  var dishesMarkDownUtil = DishesMarkDownUtil();
  await dishesMarkDownUtil.handleDishesMD('./HowToCook/dishes/home-cooking/地三鲜.md');
  print('ok');
}
