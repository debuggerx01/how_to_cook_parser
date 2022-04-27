import 'package:isar/isar.dart';

part 'change_logs.g.dart';

@Collection(accessor: 'changeLogs')
class ChangeLog {
  int id = Isar.autoIncrement;
  @Index(unique: true)
  late String commitId;
  late DateTime createdAt;
  late List<String> createdDishes;
  late List<String> updatedDishes;
}
