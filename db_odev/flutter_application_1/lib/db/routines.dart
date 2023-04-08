import "package:isar/isar.dart";

part "routines.g.dart";

@collection
class Routines {
  Id id = Isar.autoIncrement;

  String? title;

  String? category;

  String? day;

  int? starttime;
}
