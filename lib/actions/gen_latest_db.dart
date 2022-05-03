import 'dart:io';

import 'package:how_to_cook_parser/models/dishes.dart';
import 'package:how_to_cook_parser/models/recommends.dart';
import 'package:how_to_cook_parser/utils/utils.dart';
import 'package:path/path.dart';
import 'package:yaml/yaml.dart';

Future<bool> genLatestDB() async {
  var _isar = await openIsar(inspector: true);
  return await _isar.writeTxn((isar) async {
    var configsYaml = loadYaml(File('./configs.yaml').readAsStringSync());
    bool success = true;
    var config = configsYaml['recommends'] as Map;
    for (var key in config.keys) {
      if ((await isar.dishes.getByName(key)) != null && File(join('./build/images', config[key])).existsSync()) {
        await isar.recommends.put(
          await Recommend.forUpdate(isar, key, config[key]!),
        );
      } else {
        success = false;
      }
    }
    return success;
  });
}
