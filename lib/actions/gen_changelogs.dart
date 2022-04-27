import 'dart:convert';
import 'dart:io';

import 'package:how_to_cook_parser/models/change_logs.dart';
import 'package:how_to_cook_parser/utils/singleton.dart';
import 'package:isar/isar.dart';

Future<bool> genChangeLogs() async {
  if (Singleton().preDishesData?['commitId'] == Singleton().currentRepoCommitId) {
    print('Same repo version, skip gen changelogs');
    return true;
  }

  Map _currentDishes = json.decode(File('./build/dishes.json').readAsStringSync())['dishes'];
  Map _preDishes = Singleton().preDishesData?['dishes'] ?? {};

  var changeLog = ChangeLog()
    ..commitId = Singleton().currentRepoCommitId!
    ..createdAt = DateTime.now()
    ..createdDishes = []
    ..updatedDishes = [];

  _currentDishes.forEach((name, dishMap) {
    var preDish = _preDishes[name];
    if (preDish == null) {
      changeLog.createdDishes.add(name);
    } else if (preDish['hash'] != dishMap['hash']) {
      changeLog.updatedDishes.add(name);
    }
  });

  return Isar.open(
    schemas: [ChangeLogSchema],
    directory: './build/db/',
    inspector: true,
    name: 'changelogs',
  ).then((_isar) async {
    await _isar.writeTxn((isar) async {
      await isar.changeLogs.put(changeLog, replaceOnConflict: true);
    });
    return _isar.close();
  });
}
