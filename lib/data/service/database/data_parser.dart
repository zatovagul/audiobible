import 'dart:convert';

import 'package:bloc_skeleton/data/service/database/app_database.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:moor/moor.dart';

Future<List<BooksCompanion>> parseBooks()async{
  final d = await rootBundle.loadString("assets/data/books1.json");
  final map = json.decode(d) as List;
  return map.map((e) => BooksCompanion.insert(
      bookNumber: e['num'],
      name: e['name'],
      chapterCount: e['chapters'],
      isOld: Value(e['zavet']==1),
  )).toList();
}