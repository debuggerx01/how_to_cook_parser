import 'dart:io';

import 'package:how_to_cook_parser/actions/gen_changelogs.dart';
import 'package:how_to_cook_parser/actions/gen_latest_db.dart';
import 'package:how_to_cook_parser/actions/init.dart';
import 'package:how_to_cook_parser/actions/pre_fix.dart';
import 'package:how_to_cook_parser/actions/pull.dart';
import 'package:how_to_cook_parser/actions/walk_dishes.dart';

Future<void> main(List<String> arguments) async {
  var actions = [
    init,
    pullRepo,
    preFix,
    walkDishes,
    genChangeLogs,
    genLatestDB,
  ];
  bool success = false;
  for (var i = 0; i < actions.length; i++) {
    print('Start action: ' + actions[i].toString().split("'")[1]);
    success = await actions[i].call();
    if (!success) {
      print('Crashed on action: ${actions[i].toString().split("'")[1]}');
      exit(1);
    }
  }
  print('All actions done');
}
