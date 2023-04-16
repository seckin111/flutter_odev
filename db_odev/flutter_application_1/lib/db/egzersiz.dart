import "package:isar/isar.dart";

part "egzersiz.g.dart";

@collection
class Egzersiz {
  Id id = Isar.autoIncrement;

  String? egzersizTitle;

  String? egzersizBolge;

  int? egzersizTekrar;

  int? egzersizSet;

  String? egzersizSaat;
}
