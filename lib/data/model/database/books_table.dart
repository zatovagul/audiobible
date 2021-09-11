import 'package:moor/moor.dart';
class Books extends Table{
  IntColumn get id => integer().autoIncrement()();
  IntColumn get bookNumber => integer()();
  TextColumn get name => text()();
  IntColumn get chapterCount => integer()();
  BoolColumn get isOld => boolean().withDefault(Constant(true))();
  TextColumn get url => text().nullable()();
}