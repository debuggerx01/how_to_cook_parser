import 'package:isar/isar.dart';

part 'dishes.g.dart';

@Collection(accessor: 'dishes')
class Dish {
  int id = Isar.autoIncrement;
  @Index(unique: true)
  late String name;
  String? summary;
  late String ingredients;
  String? formula;
  late String steps;
  String? extra;
  late DateTime updatedAt;
  late String hash;
  late String category;
  late int priority;

  Dish();

  Dish.init() {
    name = '';
    ingredients = '';
    steps = '';
  }
}
