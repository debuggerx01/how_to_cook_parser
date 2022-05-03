import 'dart:io';

import 'package:how_to_cook_parser/models/change_logs.dart';
import 'package:how_to_cook_parser/utils/singleton.dart';
import 'package:how_to_cook_parser/utils/utils.dart';
import 'package:isar/isar.dart';

Future<bool> genChangeLogs() async {
  var changeLog = ChangeLog()
    ..commitId = Singleton().currentRepoCommitId!
    ..createdAt = DateTime.now()
    ..createdDishes = Singleton().createdDishes
    ..updatedDishes = Singleton().updatedDishes;

  return openIsar().then((_isar) async {
    await _isar.writeTxn((isar) async {
      await isar.changeLogs.put(changeLog);
      isar.changeLogs.where().sortByCreatedAtDesc().exportJsonRaw((res) async {
        var file = File('./build/changelogs.json');
        if (!file.existsSync()) file.createSync();
        file.writeAsBytesSync(res);
      });
    });
    return _isar.close();
  });
}
