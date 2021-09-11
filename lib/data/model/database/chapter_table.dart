import 'package:moor/moor.dart';

class Chapters extends Table{
  IntColumn get id => integer().autoIncrement()();
  IntColumn get chapterNum => integer()();
  IntColumn get bookId => integer().customConstraint("REFERENCES books(id)")();
  RealColumn get percentage => real().withDefault(Constant(0))();
}