// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Book extends DataClass implements Insertable<Book> {
  final int id;
  final int bookNumber;
  final String name;
  final int chapterCount;
  final bool isOld;
  final String? url;
  Book(
      {required this.id,
      required this.bookNumber,
      required this.name,
      required this.chapterCount,
      required this.isOld,
      this.url});
  factory Book.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Book(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      bookNumber: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}book_number'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      chapterCount: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}chapter_count'])!,
      isOld: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_old'])!,
      url: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}url']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['book_number'] = Variable<int>(bookNumber);
    map['name'] = Variable<String>(name);
    map['chapter_count'] = Variable<int>(chapterCount);
    map['is_old'] = Variable<bool>(isOld);
    if (!nullToAbsent || url != null) {
      map['url'] = Variable<String?>(url);
    }
    return map;
  }

  BooksCompanion toCompanion(bool nullToAbsent) {
    return BooksCompanion(
      id: Value(id),
      bookNumber: Value(bookNumber),
      name: Value(name),
      chapterCount: Value(chapterCount),
      isOld: Value(isOld),
      url: url == null && nullToAbsent ? const Value.absent() : Value(url),
    );
  }

  factory Book.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Book(
      id: serializer.fromJson<int>(json['id']),
      bookNumber: serializer.fromJson<int>(json['bookNumber']),
      name: serializer.fromJson<String>(json['name']),
      chapterCount: serializer.fromJson<int>(json['chapterCount']),
      isOld: serializer.fromJson<bool>(json['isOld']),
      url: serializer.fromJson<String?>(json['url']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'bookNumber': serializer.toJson<int>(bookNumber),
      'name': serializer.toJson<String>(name),
      'chapterCount': serializer.toJson<int>(chapterCount),
      'isOld': serializer.toJson<bool>(isOld),
      'url': serializer.toJson<String?>(url),
    };
  }

  Book copyWith(
          {int? id,
          int? bookNumber,
          String? name,
          int? chapterCount,
          bool? isOld,
          String? url}) =>
      Book(
        id: id ?? this.id,
        bookNumber: bookNumber ?? this.bookNumber,
        name: name ?? this.name,
        chapterCount: chapterCount ?? this.chapterCount,
        isOld: isOld ?? this.isOld,
        url: url ?? this.url,
      );
  @override
  String toString() {
    return (StringBuffer('Book(')
          ..write('id: $id, ')
          ..write('bookNumber: $bookNumber, ')
          ..write('name: $name, ')
          ..write('chapterCount: $chapterCount, ')
          ..write('isOld: $isOld, ')
          ..write('url: $url')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          bookNumber.hashCode,
          $mrjc(
              name.hashCode,
              $mrjc(chapterCount.hashCode,
                  $mrjc(isOld.hashCode, url.hashCode))))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Book &&
          other.id == this.id &&
          other.bookNumber == this.bookNumber &&
          other.name == this.name &&
          other.chapterCount == this.chapterCount &&
          other.isOld == this.isOld &&
          other.url == this.url);
}

class BooksCompanion extends UpdateCompanion<Book> {
  final Value<int> id;
  final Value<int> bookNumber;
  final Value<String> name;
  final Value<int> chapterCount;
  final Value<bool> isOld;
  final Value<String?> url;
  const BooksCompanion({
    this.id = const Value.absent(),
    this.bookNumber = const Value.absent(),
    this.name = const Value.absent(),
    this.chapterCount = const Value.absent(),
    this.isOld = const Value.absent(),
    this.url = const Value.absent(),
  });
  BooksCompanion.insert({
    this.id = const Value.absent(),
    required int bookNumber,
    required String name,
    required int chapterCount,
    this.isOld = const Value.absent(),
    this.url = const Value.absent(),
  })  : bookNumber = Value(bookNumber),
        name = Value(name),
        chapterCount = Value(chapterCount);
  static Insertable<Book> custom({
    Expression<int>? id,
    Expression<int>? bookNumber,
    Expression<String>? name,
    Expression<int>? chapterCount,
    Expression<bool>? isOld,
    Expression<String?>? url,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (bookNumber != null) 'book_number': bookNumber,
      if (name != null) 'name': name,
      if (chapterCount != null) 'chapter_count': chapterCount,
      if (isOld != null) 'is_old': isOld,
      if (url != null) 'url': url,
    });
  }

  BooksCompanion copyWith(
      {Value<int>? id,
      Value<int>? bookNumber,
      Value<String>? name,
      Value<int>? chapterCount,
      Value<bool>? isOld,
      Value<String?>? url}) {
    return BooksCompanion(
      id: id ?? this.id,
      bookNumber: bookNumber ?? this.bookNumber,
      name: name ?? this.name,
      chapterCount: chapterCount ?? this.chapterCount,
      isOld: isOld ?? this.isOld,
      url: url ?? this.url,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (bookNumber.present) {
      map['book_number'] = Variable<int>(bookNumber.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (chapterCount.present) {
      map['chapter_count'] = Variable<int>(chapterCount.value);
    }
    if (isOld.present) {
      map['is_old'] = Variable<bool>(isOld.value);
    }
    if (url.present) {
      map['url'] = Variable<String?>(url.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BooksCompanion(')
          ..write('id: $id, ')
          ..write('bookNumber: $bookNumber, ')
          ..write('name: $name, ')
          ..write('chapterCount: $chapterCount, ')
          ..write('isOld: $isOld, ')
          ..write('url: $url')
          ..write(')'))
        .toString();
  }
}

class $BooksTable extends Books with TableInfo<$BooksTable, Book> {
  final GeneratedDatabase _db;
  final String? _alias;
  $BooksTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _bookNumberMeta = const VerificationMeta('bookNumber');
  late final GeneratedColumn<int?> bookNumber = GeneratedColumn<int?>(
      'book_number', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _chapterCountMeta =
      const VerificationMeta('chapterCount');
  late final GeneratedColumn<int?> chapterCount = GeneratedColumn<int?>(
      'chapter_count', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _isOldMeta = const VerificationMeta('isOld');
  late final GeneratedColumn<bool?> isOld = GeneratedColumn<bool?>(
      'is_old', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (is_old IN (0, 1))',
      defaultValue: Constant(true));
  final VerificationMeta _urlMeta = const VerificationMeta('url');
  late final GeneratedColumn<String?> url = GeneratedColumn<String?>(
      'url', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, bookNumber, name, chapterCount, isOld, url];
  @override
  String get aliasedName => _alias ?? 'books';
  @override
  String get actualTableName => 'books';
  @override
  VerificationContext validateIntegrity(Insertable<Book> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('book_number')) {
      context.handle(
          _bookNumberMeta,
          bookNumber.isAcceptableOrUnknown(
              data['book_number']!, _bookNumberMeta));
    } else if (isInserting) {
      context.missing(_bookNumberMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('chapter_count')) {
      context.handle(
          _chapterCountMeta,
          chapterCount.isAcceptableOrUnknown(
              data['chapter_count']!, _chapterCountMeta));
    } else if (isInserting) {
      context.missing(_chapterCountMeta);
    }
    if (data.containsKey('is_old')) {
      context.handle(
          _isOldMeta, isOld.isAcceptableOrUnknown(data['is_old']!, _isOldMeta));
    }
    if (data.containsKey('url')) {
      context.handle(
          _urlMeta, url.isAcceptableOrUnknown(data['url']!, _urlMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Book map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Book.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $BooksTable createAlias(String alias) {
    return $BooksTable(_db, alias);
  }
}

class Chapter extends DataClass implements Insertable<Chapter> {
  final int id;
  final int chapterNum;
  final int bookId;
  final double percentage;
  Chapter(
      {required this.id,
      required this.chapterNum,
      required this.bookId,
      required this.percentage});
  factory Chapter.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Chapter(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      chapterNum: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}chapter_num'])!,
      bookId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}book_id'])!,
      percentage: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}percentage'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['chapter_num'] = Variable<int>(chapterNum);
    map['book_id'] = Variable<int>(bookId);
    map['percentage'] = Variable<double>(percentage);
    return map;
  }

  ChaptersCompanion toCompanion(bool nullToAbsent) {
    return ChaptersCompanion(
      id: Value(id),
      chapterNum: Value(chapterNum),
      bookId: Value(bookId),
      percentage: Value(percentage),
    );
  }

  factory Chapter.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Chapter(
      id: serializer.fromJson<int>(json['id']),
      chapterNum: serializer.fromJson<int>(json['chapterNum']),
      bookId: serializer.fromJson<int>(json['bookId']),
      percentage: serializer.fromJson<double>(json['percentage']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'chapterNum': serializer.toJson<int>(chapterNum),
      'bookId': serializer.toJson<int>(bookId),
      'percentage': serializer.toJson<double>(percentage),
    };
  }

  Chapter copyWith(
          {int? id, int? chapterNum, int? bookId, double? percentage}) =>
      Chapter(
        id: id ?? this.id,
        chapterNum: chapterNum ?? this.chapterNum,
        bookId: bookId ?? this.bookId,
        percentage: percentage ?? this.percentage,
      );
  @override
  String toString() {
    return (StringBuffer('Chapter(')
          ..write('id: $id, ')
          ..write('chapterNum: $chapterNum, ')
          ..write('bookId: $bookId, ')
          ..write('percentage: $percentage')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(id.hashCode,
      $mrjc(chapterNum.hashCode, $mrjc(bookId.hashCode, percentage.hashCode))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Chapter &&
          other.id == this.id &&
          other.chapterNum == this.chapterNum &&
          other.bookId == this.bookId &&
          other.percentage == this.percentage);
}

class ChaptersCompanion extends UpdateCompanion<Chapter> {
  final Value<int> id;
  final Value<int> chapterNum;
  final Value<int> bookId;
  final Value<double> percentage;
  const ChaptersCompanion({
    this.id = const Value.absent(),
    this.chapterNum = const Value.absent(),
    this.bookId = const Value.absent(),
    this.percentage = const Value.absent(),
  });
  ChaptersCompanion.insert({
    this.id = const Value.absent(),
    required int chapterNum,
    required int bookId,
    this.percentage = const Value.absent(),
  })  : chapterNum = Value(chapterNum),
        bookId = Value(bookId);
  static Insertable<Chapter> custom({
    Expression<int>? id,
    Expression<int>? chapterNum,
    Expression<int>? bookId,
    Expression<double>? percentage,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (chapterNum != null) 'chapter_num': chapterNum,
      if (bookId != null) 'book_id': bookId,
      if (percentage != null) 'percentage': percentage,
    });
  }

  ChaptersCompanion copyWith(
      {Value<int>? id,
      Value<int>? chapterNum,
      Value<int>? bookId,
      Value<double>? percentage}) {
    return ChaptersCompanion(
      id: id ?? this.id,
      chapterNum: chapterNum ?? this.chapterNum,
      bookId: bookId ?? this.bookId,
      percentage: percentage ?? this.percentage,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (chapterNum.present) {
      map['chapter_num'] = Variable<int>(chapterNum.value);
    }
    if (bookId.present) {
      map['book_id'] = Variable<int>(bookId.value);
    }
    if (percentage.present) {
      map['percentage'] = Variable<double>(percentage.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ChaptersCompanion(')
          ..write('id: $id, ')
          ..write('chapterNum: $chapterNum, ')
          ..write('bookId: $bookId, ')
          ..write('percentage: $percentage')
          ..write(')'))
        .toString();
  }
}

class $ChaptersTable extends Chapters with TableInfo<$ChaptersTable, Chapter> {
  final GeneratedDatabase _db;
  final String? _alias;
  $ChaptersTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _chapterNumMeta = const VerificationMeta('chapterNum');
  late final GeneratedColumn<int?> chapterNum = GeneratedColumn<int?>(
      'chapter_num', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _bookIdMeta = const VerificationMeta('bookId');
  late final GeneratedColumn<int?> bookId = GeneratedColumn<int?>(
      'book_id', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'REFERENCES books(id)');
  final VerificationMeta _percentageMeta = const VerificationMeta('percentage');
  late final GeneratedColumn<double?> percentage = GeneratedColumn<double?>(
      'percentage', aliasedName, false,
      typeName: 'REAL', requiredDuringInsert: false, defaultValue: Constant(0));
  @override
  List<GeneratedColumn> get $columns => [id, chapterNum, bookId, percentage];
  @override
  String get aliasedName => _alias ?? 'chapters';
  @override
  String get actualTableName => 'chapters';
  @override
  VerificationContext validateIntegrity(Insertable<Chapter> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('chapter_num')) {
      context.handle(
          _chapterNumMeta,
          chapterNum.isAcceptableOrUnknown(
              data['chapter_num']!, _chapterNumMeta));
    } else if (isInserting) {
      context.missing(_chapterNumMeta);
    }
    if (data.containsKey('book_id')) {
      context.handle(_bookIdMeta,
          bookId.isAcceptableOrUnknown(data['book_id']!, _bookIdMeta));
    } else if (isInserting) {
      context.missing(_bookIdMeta);
    }
    if (data.containsKey('percentage')) {
      context.handle(
          _percentageMeta,
          percentage.isAcceptableOrUnknown(
              data['percentage']!, _percentageMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Chapter map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Chapter.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $ChaptersTable createAlias(String alias) {
    return $ChaptersTable(_db, alias);
  }
}

class Reader extends DataClass implements Insertable<Reader> {
  final int id;
  final String name;
  final String info;
  final String nameId;
  final String? audioUrl;
  Reader(
      {required this.id,
      required this.name,
      required this.info,
      required this.nameId,
      this.audioUrl});
  factory Reader.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Reader(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      info: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}info'])!,
      nameId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name_id'])!,
      audioUrl: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audio_url']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['info'] = Variable<String>(info);
    map['name_id'] = Variable<String>(nameId);
    if (!nullToAbsent || audioUrl != null) {
      map['audio_url'] = Variable<String?>(audioUrl);
    }
    return map;
  }

  ReadersCompanion toCompanion(bool nullToAbsent) {
    return ReadersCompanion(
      id: Value(id),
      name: Value(name),
      info: Value(info),
      nameId: Value(nameId),
      audioUrl: audioUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(audioUrl),
    );
  }

  factory Reader.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Reader(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      info: serializer.fromJson<String>(json['info']),
      nameId: serializer.fromJson<String>(json['nameId']),
      audioUrl: serializer.fromJson<String?>(json['audioUrl']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'info': serializer.toJson<String>(info),
      'nameId': serializer.toJson<String>(nameId),
      'audioUrl': serializer.toJson<String?>(audioUrl),
    };
  }

  Reader copyWith(
          {int? id,
          String? name,
          String? info,
          String? nameId,
          String? audioUrl}) =>
      Reader(
        id: id ?? this.id,
        name: name ?? this.name,
        info: info ?? this.info,
        nameId: nameId ?? this.nameId,
        audioUrl: audioUrl ?? this.audioUrl,
      );
  @override
  String toString() {
    return (StringBuffer('Reader(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('info: $info, ')
          ..write('nameId: $nameId, ')
          ..write('audioUrl: $audioUrl')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(name.hashCode,
          $mrjc(info.hashCode, $mrjc(nameId.hashCode, audioUrl.hashCode)))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Reader &&
          other.id == this.id &&
          other.name == this.name &&
          other.info == this.info &&
          other.nameId == this.nameId &&
          other.audioUrl == this.audioUrl);
}

class ReadersCompanion extends UpdateCompanion<Reader> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> info;
  final Value<String> nameId;
  final Value<String?> audioUrl;
  const ReadersCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.info = const Value.absent(),
    this.nameId = const Value.absent(),
    this.audioUrl = const Value.absent(),
  });
  ReadersCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String info,
    required String nameId,
    this.audioUrl = const Value.absent(),
  })  : name = Value(name),
        info = Value(info),
        nameId = Value(nameId);
  static Insertable<Reader> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? info,
    Expression<String>? nameId,
    Expression<String?>? audioUrl,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (info != null) 'info': info,
      if (nameId != null) 'name_id': nameId,
      if (audioUrl != null) 'audio_url': audioUrl,
    });
  }

  ReadersCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String>? info,
      Value<String>? nameId,
      Value<String?>? audioUrl}) {
    return ReadersCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      info: info ?? this.info,
      nameId: nameId ?? this.nameId,
      audioUrl: audioUrl ?? this.audioUrl,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (info.present) {
      map['info'] = Variable<String>(info.value);
    }
    if (nameId.present) {
      map['name_id'] = Variable<String>(nameId.value);
    }
    if (audioUrl.present) {
      map['audio_url'] = Variable<String?>(audioUrl.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ReadersCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('info: $info, ')
          ..write('nameId: $nameId, ')
          ..write('audioUrl: $audioUrl')
          ..write(')'))
        .toString();
  }
}

class $ReadersTable extends Readers with TableInfo<$ReadersTable, Reader> {
  final GeneratedDatabase _db;
  final String? _alias;
  $ReadersTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _infoMeta = const VerificationMeta('info');
  late final GeneratedColumn<String?> info = GeneratedColumn<String?>(
      'info', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _nameIdMeta = const VerificationMeta('nameId');
  late final GeneratedColumn<String?> nameId = GeneratedColumn<String?>(
      'name_id', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _audioUrlMeta = const VerificationMeta('audioUrl');
  late final GeneratedColumn<String?> audioUrl = GeneratedColumn<String?>(
      'audio_url', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, name, info, nameId, audioUrl];
  @override
  String get aliasedName => _alias ?? 'readers';
  @override
  String get actualTableName => 'readers';
  @override
  VerificationContext validateIntegrity(Insertable<Reader> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('info')) {
      context.handle(
          _infoMeta, info.isAcceptableOrUnknown(data['info']!, _infoMeta));
    } else if (isInserting) {
      context.missing(_infoMeta);
    }
    if (data.containsKey('name_id')) {
      context.handle(_nameIdMeta,
          nameId.isAcceptableOrUnknown(data['name_id']!, _nameIdMeta));
    } else if (isInserting) {
      context.missing(_nameIdMeta);
    }
    if (data.containsKey('audio_url')) {
      context.handle(_audioUrlMeta,
          audioUrl.isAcceptableOrUnknown(data['audio_url']!, _audioUrlMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Reader map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Reader.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $ReadersTable createAlias(String alias) {
    return $ReadersTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $BooksTable books = $BooksTable(this);
  late final $ChaptersTable chapters = $ChaptersTable(this);
  late final $ReadersTable readers = $ReadersTable(this);
  late final BookDao bookDao = BookDao(this as AppDatabase);
  late final ChapterDao chapterDao = ChapterDao(this as AppDatabase);
  late final ReaderDao readerDao = ReaderDao(this as AppDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [books, chapters, readers];
}

// **************************************************************************
// DaoGenerator
// **************************************************************************

mixin _$BookDaoMixin on DatabaseAccessor<AppDatabase> {
  $BooksTable get books => attachedDatabase.books;
}
mixin _$ChapterDaoMixin on DatabaseAccessor<AppDatabase> {
  $BooksTable get books => attachedDatabase.books;
  $ChaptersTable get chapters => attachedDatabase.chapters;
}
mixin _$ReaderDaoMixin on DatabaseAccessor<AppDatabase> {
  $ReadersTable get readers => attachedDatabase.readers;
}
