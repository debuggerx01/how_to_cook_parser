import 'package:isar/isar.dart';

part 'recommends.g.dart';

@Collection(accessor: 'recommends')
class Recommend {
  int id = Isar.autoIncrement;
  @Index(unique: true)
  late String name;
  late String cover;
}
