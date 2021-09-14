import 'package:bloc_skeleton/data/service/database/app_database.dart';
import 'package:moor/moor.dart';

class Chapters extends Table{
  IntColumn get id => integer().autoIncrement()();
  IntColumn get chapterNum => integer()();
  IntColumn get bookId => integer().customConstraint("REFERENCES books(id)")();
  RealColumn get percentage => real().withDefault(Constant(0))();
}

class ChapterWithBook{
  Chapter chapter;
  Book book;
  double percentage = 0;
  ChapterWithBook(this.chapter, this.book,[this.percentage = 0]);

  static List<ChapterWithBook> makenormalList(List<ChapterWithBook> books){
    if(books.length==0) return [];
    List<ChapterWithBook> percList = [];
    books.forEach((e) {
      if(percList.where((element) => element.book.id==e.book.id).length==0){
        final idList = books.where((element) => element.book.id == e.book.id);
        final summ = idList.map((e) => e.chapter.percentage).reduce((a, b) => a+b);
        percList.add(ChapterWithBook(e.chapter, e.book, summ/idList.length));
      }
    });

    return percList;
  }
}