import 'dart:convert' show utf8;
import 'package:crypto/crypto.dart' show sha1;
import 'package:how_to_cook_parser/models/change_logs.dart';
import 'package:how_to_cook_parser/models/dishes.dart';
import 'package:how_to_cook_parser/models/recommends.dart';
import 'package:isar/isar.dart';

String computeHash(String input) => sha1.convert(utf8.encode(input)).toString();

String getCategory(String path) {
  var split = path.split('/');
  return split.length > 3 ? split[3] : '';
}

Future<Isar> openIsar({inspector = false}) => Isar.open(
      schemas: [
        DishSchema,
        ChangeLogSchema,
        RecommendSchema,
      ],
      directory: './build',
      inspector: inspector,
      name: 'db',
    );
