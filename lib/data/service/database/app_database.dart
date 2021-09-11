import 'dart:io';

import 'package:bloc_skeleton/data/model/database/books_table.dart';
import 'package:bloc_skeleton/data/model/database/chapter_table.dart';
import 'package:bloc_skeleton/data/model/database/reader_table.dart';
import 'package:bloc_skeleton/data/service/database/data_parser.dart';
import 'package:moor/ffi.dart';
import 'package:moor/moor.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

part 'app_database.g.dart';

@UseDao(tables: [Books])
class BookDao extends DatabaseAccessor<AppDatabase> with _$BookDaoMixin{
  final AppDatabase db;
  BookDao(this.db) : super(db);

  Future insertAllBooks(List<BooksCompanion> bs) => batch((b) => b.insertAll(books, bs));
  Future insertBook(BooksCompanion b) => into(books).insert(b);

  Future deleteAllBooks() => delete(books).go();

  Future<List<Book>> getAllBooks() => select(books).get();
  Stream<List<Book>> watchAllBooks() => select(books).watch();
}

@UseDao(tables: [Books, Chapters])
class ChapterDao extends DatabaseAccessor<AppDatabase> with _$ChapterDaoMixin{
  final AppDatabase db;
  ChapterDao(this.db) : super(db);

  Future insertAllChapters(List<ChaptersCompanion> cs) => batch((b) => b.insertAll(chapters, cs));

  Stream<List<Chapter>> watchChaptersByBookId(int bookId) => (select(chapters)..where((tbl) => tbl.bookId.equals(bookId))).watch();

  Future deleteAllChapters() => delete(chapters).go();
}

@UseDao(tables: [Readers])
class ReaderDao extends DatabaseAccessor<AppDatabase> with _$ReaderDaoMixin{
  final AppDatabase db;
  ReaderDao(this.db) : super(db);

  Future insertAllReaders(List<ReadersCompanion> rs) => batch((b) => b.insertAll(readers, rs));

  Future deleteAllReaders() => delete(readers).go();
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'audiobible.sqlite'));
    return VmDatabase(file);
  });
}

@UseMoor(
  tables: [Books, Chapters, Readers],
  daos: [BookDao, ChapterDao, ReaderDao]
)
class AppDatabase extends _$AppDatabase{
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      beforeOpen: (details) async {
        if (details.wasCreated) {
          await insertData();
        }
      },
    );
  }
  insertData()async{
    final books = await parseBooks();
    await this.bookDao.insertAllBooks(books);

    List<ChaptersCompanion> chapters = [];
    final dbBooks = await this.bookDao.getAllBooks();
    dbBooks.forEach((e) {
      for(int i=1;i<=e.chapterCount;i++){
        chapters.add(ChaptersCompanion.insert(bookId: e.id,chapterNum: i));
      }
    });

    await this.chapterDao.insertAllChapters(chapters);
  }
}