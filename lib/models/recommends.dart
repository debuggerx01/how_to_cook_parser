import 'package:isar/isar.dart';

part 'recommends.g.dart';

@Collection(accessor: 'recommends')
class Recommend {
  int id = Isar.autoIncrement;
  @Index(unique: true)
  late String name;
  late String cover;

  static Future<Recommend> forUpdate(Isar isar, String name, String cover) async => Recommend()
    ..id = (await isar.recommends.getByName(name))?.id ?? Isar.autoIncrement
    ..name = name
    ..cover = cover;
}
