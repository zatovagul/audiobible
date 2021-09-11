import 'package:moor/moor.dart';

class Readers extends Table{
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  TextColumn get info => text()();
  TextColumn get nameId => text()();
  TextColumn get audioUrl => text().nullable()();
}