import 'dart:io';

import 'package:how_to_cook_parser/models/change_logs.dart';
import 'package:how_to_cook_parser/models/dishes.dart';
import 'package:how_to_cook_parser/models/recommends.dart';
import 'package:how_to_cook_parser/utils/singleton.dart';
import 'package:isar/isar.dart';
import 'package:path/path.dart';
import 'package:yaml/yaml.dart';
import 'package:collection/collection.dart';

Future<bool> genLatestDB() async {
  if (Singleton().preDishesData?['commitId'] == Singleton().currentRepoCommitId) {
    print('Same repo version, skip gen latest db');
    return true;
  }

  var dir = Directory('./build/db/latest');
  if (dir.existsSync()) dir.deleteSync(recursive: true);

  var _isar = await Isar.open(
    schemas: [ChangeLogSchema],
    directory: './build/db/',
    name: 'changelogs',
  );
  var changelogs = await _isar.changeLogs.where().sortByCreatedAt().findAll();
  await _isar.close();

  _isar = await Isar.open(
    schemas: [DishSchema],
    directory: './build/db/dishes',
    name: 'dishes_${Singleton().currentRepoCommitId}',
  );

  var dishes = await _isar.dishes.where().findAll();

  _isar.close();

  _isar = await Isar.open(
    schemas: [
      DishSchema,
      ChangeLogSchema,
      RecommendSchema,
    ],
    directory: './build/db/',
    inspector: true,
    name: 'latest',
  );

  return _isar.writeTxn((__isar) async {
    await __isar.dishes.putAll(dishes);
    await __isar.changeLogs.putAll(changelogs);
    var configsYaml = loadYaml(File('./configs.yaml').readAsStringSync());
    bool success = true;
    (configsYaml['recommends'] as Map).forEach((key, value) async {
      if (dishes.firstWhereOrNull((element) => element.name == key) != null &&
          File(join('./build/images', value)).existsSync()) {
        await __isar.recommends.put(
          Recommend()
            ..name = key
            ..cover = value,
          replaceOnConflict: true,
        );
      } else {
        success = false;
      }
    });
    return success;
  });
}
