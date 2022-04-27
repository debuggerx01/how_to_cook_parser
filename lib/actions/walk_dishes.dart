import 'dart:io';
import 'package:how_to_cook_parser/utils/handle_dishes_md.dart';
import 'package:how_to_cook_parser/utils/utils.dart';
import 'package:path/path.dart';

class Size {
  final int width;
  final int height;

  const Size(this.width, this.height);

  Size.fromWidthHeight(List<int?> wh)
      : width = wh[0] ?? 0,
        height = wh[1] ?? 0;
}

Future<Size?> getImageWidth(String imagePath) async {
  var processResult = await Process.run('identify', ['-format', '%w %h', imagePath], runInShell: true);
  if (processResult.exitCode != 0) return null;
  var wh = processResult.stdout.toString().split(' ').map(int.tryParse).toList();
  return Size.fromWidthHeight(wh);
}

Future<bool> walkDishes({skipImages = false}) async {
  var dishesMarkDownUtil = DishesMarkDownUtil();
  await dishesMarkDownUtil.init();
  var dir = Directory('./HowToCook/dishes');
  try {
    for (var ele in dir.listSync(recursive: true)) {
      var fileExt = extension(ele.path).toLowerCase();
      if (!skipImages && ['.jpg', '.jpeg', '.png'].contains(fileExt)) {
        print('Converting ${basename(ele.path)} to webp format');
        var args = [
          ele.path,
          '-m',
          '6',
          '-q',
          '85',
          '-o',
          './build/images/${computeHash(withoutExtension(normalize(ele.path)))}.webp',
        ];
        var size = await getImageWidth(ele.path);
        if (size == null) {
          print('Get image size failed: ${ele.path}');
          return false;
        }
        if (size.width > size.height) {
          if (size.width > 1200) {
            args.addAll(['-resize', '1200', '0']);
          }
        } else {
          if (size.height > 1200) {
            args.addAll(['-resize', '0', '1200']);
          }
        }
        await Process.run('cwebp', args, runInShell: true);
      } else if (!skipImages && fileExt == '.webp') {
        await File(ele.path).copy('./build/images/${computeHash(withoutExtension(normalize(ele.path)))}.webp');
      } else if (fileExt == '.md') {
        if (!await dishesMarkDownUtil.handleDishesMD(ele.path)) {
          throw DishesMarkDownParseError();
        }
      }
    }
  } on DishesMarkDownParseError {
    return false;
  }
  await dishesMarkDownUtil.dumpToJson();
  return dishesMarkDownUtil.finish();
}

class DishesMarkDownParseError extends Error {}
