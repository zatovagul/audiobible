// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeEventTearOff {
  const _$HomeEventTearOff();

  _ChangePage changePage(int page) {
    return _ChangePage(
      page,
    );
  }

  _ChangeReader changeReader(Reader reader) {
    return _ChangeReader(
      reader,
    );
  }

  _OpenChapter openChapter(Chapter chapter, Book book) {
    return _OpenChapter(
      chapter,
      book,
    );
  }
}

/// @nodoc
const $HomeEvent = _$HomeEventTearOff();

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) changePage,
    required TResult Function(Reader reader) changeReader,
    required TResult Function(Chapter chapter, Book book) openChapter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int page)? changePage,
    TResult Function(Reader reader)? changeReader,
    TResult Function(Chapter chapter, Book book)? openChapter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? changePage,
    TResult Function(Reader reader)? changeReader,
    TResult Function(Chapter chapter, Book book)? openChapter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangePage value) changePage,
    required TResult Function(_ChangeReader value) changeReader,
    required TResult Function(_OpenChapter value) openChapter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ChangePage value)? changePage,
    TResult Function(_ChangeReader value)? changeReader,
    TResult Function(_OpenChapter value)? openChapter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePage value)? changePage,
    TResult Function(_ChangeReader value)? changeReader,
    TResult Function(_OpenChapter value)? openChapter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;
}

/// @nodoc
abstract class _$ChangePageCopyWith<$Res> {
  factory _$ChangePageCopyWith(
          _ChangePage value, $Res Function(_ChangePage) then) =
      __$ChangePageCopyWithImpl<$Res>;
  $Res call({int page});
}

/// @nodoc
class __$ChangePageCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements _$ChangePageCopyWith<$Res> {
  __$ChangePageCopyWithImpl(
      _ChangePage _value, $Res Function(_ChangePage) _then)
      : super(_value, (v) => _then(v as _ChangePage));

  @override
  _ChangePage get _value => super._value as _ChangePage;

  @override
  $Res call({
    Object? page = freezed,
  }) {
    return _then(_ChangePage(
      page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ChangePage extends _ChangePage {
  const _$_ChangePage(this.page) : super._();

  @override
  final int page;

  @override
  String toString() {
    return 'HomeEvent.changePage(page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangePage &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(page);

  @JsonKey(ignore: true)
  @override
  _$ChangePageCopyWith<_ChangePage> get copyWith =>
      __$ChangePageCopyWithImpl<_ChangePage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) changePage,
    required TResult Function(Reader reader) changeReader,
    required TResult Function(Chapter chapter, Book book) openChapter,
  }) {
    return changePage(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int page)? changePage,
    TResult Function(Reader reader)? changeReader,
    TResult Function(Chapter chapter, Book book)? openChapter,
  }) {
    return changePage?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? changePage,
    TResult Function(Reader reader)? changeReader,
    TResult Function(Chapter chapter, Book book)? openChapter,
    required TResult orElse(),
  }) {
    if (changePage != null) {
      return changePage(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangePage value) changePage,
    required TResult Function(_ChangeReader value) changeReader,
    required TResult Function(_OpenChapter value) openChapter,
  }) {
    return changePage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ChangePage value)? changePage,
    TResult Function(_ChangeReader value)? changeReader,
    TResult Function(_OpenChapter value)? openChapter,
  }) {
    return changePage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePage value)? changePage,
    TResult Function(_ChangeReader value)? changeReader,
    TResult Function(_OpenChapter value)? openChapter,
    required TResult orElse(),
  }) {
    if (changePage != null) {
      return changePage(this);
    }
    return orElse();
  }
}

abstract class _ChangePage extends HomeEvent {
  const factory _ChangePage(int page) = _$_ChangePage;
  const _ChangePage._() : super._();

  int get page => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangePageCopyWith<_ChangePage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeReaderCopyWith<$Res> {
  factory _$ChangeReaderCopyWith(
          _ChangeReader value, $Res Function(_ChangeReader) then) =
      __$ChangeReaderCopyWithImpl<$Res>;
  $Res call({Reader reader});
}

/// @nodoc
class __$ChangeReaderCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements _$ChangeReaderCopyWith<$Res> {
  __$ChangeReaderCopyWithImpl(
      _ChangeReader _value, $Res Function(_ChangeReader) _then)
      : super(_value, (v) => _then(v as _ChangeReader));

  @override
  _ChangeReader get _value => super._value as _ChangeReader;

  @override
  $Res call({
    Object? reader = freezed,
  }) {
    return _then(_ChangeReader(
      reader == freezed
          ? _value.reader
          : reader // ignore: cast_nullable_to_non_nullable
              as Reader,
    ));
  }
}

/// @nodoc

class _$_ChangeReader extends _ChangeReader {
  const _$_ChangeReader(this.reader) : super._();

  @override
  final Reader reader;

  @override
  String toString() {
    return 'HomeEvent.changeReader(reader: $reader)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeReader &&
            (identical(other.reader, reader) ||
                const DeepCollectionEquality().equals(other.reader, reader)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(reader);

  @JsonKey(ignore: true)
  @override
  _$ChangeReaderCopyWith<_ChangeReader> get copyWith =>
      __$ChangeReaderCopyWithImpl<_ChangeReader>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) changePage,
    required TResult Function(Reader reader) changeReader,
    required TResult Function(Chapter chapter, Book book) openChapter,
  }) {
    return changeReader(reader);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int page)? changePage,
    TResult Function(Reader reader)? changeReader,
    TResult Function(Chapter chapter, Book book)? openChapter,
  }) {
    return changeReader?.call(reader);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? changePage,
    TResult Function(Reader reader)? changeReader,
    TResult Function(Chapter chapter, Book book)? openChapter,
    required TResult orElse(),
  }) {
    if (changeReader != null) {
      return changeReader(reader);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangePage value) changePage,
    required TResult Function(_ChangeReader value) changeReader,
    required TResult Function(_OpenChapter value) openChapter,
  }) {
    return changeReader(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ChangePage value)? changePage,
    TResult Function(_ChangeReader value)? changeReader,
    TResult Function(_OpenChapter value)? openChapter,
  }) {
    return changeReader?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePage value)? changePage,
    TResult Function(_ChangeReader value)? changeReader,
    TResult Function(_OpenChapter value)? openChapter,
    required TResult orElse(),
  }) {
    if (changeReader != null) {
      return changeReader(this);
    }
    return orElse();
  }
}

abstract class _ChangeReader extends HomeEvent {
  const factory _ChangeReader(Reader reader) = _$_ChangeReader;
  const _ChangeReader._() : super._();

  Reader get reader => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeReaderCopyWith<_ChangeReader> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OpenChapterCopyWith<$Res> {
  factory _$OpenChapterCopyWith(
          _OpenChapter value, $Res Function(_OpenChapter) then) =
      __$OpenChapterCopyWithImpl<$Res>;
  $Res call({Chapter chapter, Book book});
}

/// @nodoc
class __$OpenChapterCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements _$OpenChapterCopyWith<$Res> {
  __$OpenChapterCopyWithImpl(
      _OpenChapter _value, $Res Function(_OpenChapter) _then)
      : super(_value, (v) => _then(v as _OpenChapter));

  @override
  _OpenChapter get _value => super._value as _OpenChapter;

  @override
  $Res call({
    Object? chapter = freezed,
    Object? book = freezed,
  }) {
    return _then(_OpenChapter(
      chapter == freezed
          ? _value.chapter
          : chapter // ignore: cast_nullable_to_non_nullable
              as Chapter,
      book == freezed
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as Book,
    ));
  }
}

/// @nodoc

class _$_OpenChapter extends _OpenChapter {
  const _$_OpenChapter(this.chapter, this.book) : super._();

  @override
  final Chapter chapter;
  @override
  final Book book;

  @override
  String toString() {
    return 'HomeEvent.openChapter(chapter: $chapter, book: $book)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OpenChapter &&
            (identical(other.chapter, chapter) ||
                const DeepCollectionEquality()
                    .equals(other.chapter, chapter)) &&
            (identical(other.book, book) ||
                const DeepCollectionEquality().equals(other.book, book)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(chapter) ^
      const DeepCollectionEquality().hash(book);

  @JsonKey(ignore: true)
  @override
  _$OpenChapterCopyWith<_OpenChapter> get copyWith =>
      __$OpenChapterCopyWithImpl<_OpenChapter>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) changePage,
    required TResult Function(Reader reader) changeReader,
    required TResult Function(Chapter chapter, Book book) openChapter,
  }) {
    return openChapter(chapter, book);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int page)? changePage,
    TResult Function(Reader reader)? changeReader,
    TResult Function(Chapter chapter, Book book)? openChapter,
  }) {
    return openChapter?.call(chapter, book);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? changePage,
    TResult Function(Reader reader)? changeReader,
    TResult Function(Chapter chapter, Book book)? openChapter,
    required TResult orElse(),
  }) {
    if (openChapter != null) {
      return openChapter(chapter, book);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangePage value) changePage,
    required TResult Function(_ChangeReader value) changeReader,
    required TResult Function(_OpenChapter value) openChapter,
  }) {
    return openChapter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ChangePage value)? changePage,
    TResult Function(_ChangeReader value)? changeReader,
    TResult Function(_OpenChapter value)? openChapter,
  }) {
    return openChapter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePage value)? changePage,
    TResult Function(_ChangeReader value)? changeReader,
    TResult Function(_OpenChapter value)? openChapter,
    required TResult orElse(),
  }) {
    if (openChapter != null) {
      return openChapter(this);
    }
    return orElse();
  }
}

abstract class _OpenChapter extends HomeEvent {
  const factory _OpenChapter(Chapter chapter, Book book) = _$_OpenChapter;
  const _OpenChapter._() : super._();

  Chapter get chapter => throw _privateConstructorUsedError;
  Book get book => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OpenChapterCopyWith<_OpenChapter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  PageChanged pageChanged(int page) {
    return PageChanged(
      page,
    );
  }

  ReaderChanged readerChanged(Reader reader) {
    return ReaderChanged(
      reader,
    );
  }

  ChepterOpened chapterOpened(PlayerInfo playerInfo) {
    return ChepterOpened(
      playerInfo,
    );
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) pageChanged,
    required TResult Function(Reader reader) readerChanged,
    required TResult Function(PlayerInfo playerInfo) chapterOpened,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int page)? pageChanged,
    TResult Function(Reader reader)? readerChanged,
    TResult Function(PlayerInfo playerInfo)? chapterOpened,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? pageChanged,
    TResult Function(Reader reader)? readerChanged,
    TResult Function(PlayerInfo playerInfo)? chapterOpened,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PageChanged value) pageChanged,
    required TResult Function(ReaderChanged value) readerChanged,
    required TResult Function(ChepterOpened value) chapterOpened,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PageChanged value)? pageChanged,
    TResult Function(ReaderChanged value)? readerChanged,
    TResult Function(ChepterOpened value)? chapterOpened,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PageChanged value)? pageChanged,
    TResult Function(ReaderChanged value)? readerChanged,
    TResult Function(ChepterOpened value)? chapterOpened,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;
}

/// @nodoc
abstract class $PageChangedCopyWith<$Res> {
  factory $PageChangedCopyWith(
          PageChanged value, $Res Function(PageChanged) then) =
      _$PageChangedCopyWithImpl<$Res>;
  $Res call({int page});
}

/// @nodoc
class _$PageChangedCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements $PageChangedCopyWith<$Res> {
  _$PageChangedCopyWithImpl(
      PageChanged _value, $Res Function(PageChanged) _then)
      : super(_value, (v) => _then(v as PageChanged));

  @override
  PageChanged get _value => super._value as PageChanged;

  @override
  $Res call({
    Object? page = freezed,
  }) {
    return _then(PageChanged(
      page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PageChanged extends PageChanged {
  const _$PageChanged(this.page) : super._();

  @override
  final int page;

  @override
  String toString() {
    return 'HomeState.pageChanged(page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PageChanged &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(page);

  @JsonKey(ignore: true)
  @override
  $PageChangedCopyWith<PageChanged> get copyWith =>
      _$PageChangedCopyWithImpl<PageChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) pageChanged,
    required TResult Function(Reader reader) readerChanged,
    required TResult Function(PlayerInfo playerInfo) chapterOpened,
  }) {
    return pageChanged(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int page)? pageChanged,
    TResult Function(Reader reader)? readerChanged,
    TResult Function(PlayerInfo playerInfo)? chapterOpened,
  }) {
    return pageChanged?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? pageChanged,
    TResult Function(Reader reader)? readerChanged,
    TResult Function(PlayerInfo playerInfo)? chapterOpened,
    required TResult orElse(),
  }) {
    if (pageChanged != null) {
      return pageChanged(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PageChanged value) pageChanged,
    required TResult Function(ReaderChanged value) readerChanged,
    required TResult Function(ChepterOpened value) chapterOpened,
  }) {
    return pageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PageChanged value)? pageChanged,
    TResult Function(ReaderChanged value)? readerChanged,
    TResult Function(ChepterOpened value)? chapterOpened,
  }) {
    return pageChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PageChanged value)? pageChanged,
    TResult Function(ReaderChanged value)? readerChanged,
    TResult Function(ChepterOpened value)? chapterOpened,
    required TResult orElse(),
  }) {
    if (pageChanged != null) {
      return pageChanged(this);
    }
    return orElse();
  }
}

abstract class PageChanged extends HomeState {
  const factory PageChanged(int page) = _$PageChanged;
  const PageChanged._() : super._();

  int get page => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PageChangedCopyWith<PageChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReaderChangedCopyWith<$Res> {
  factory $ReaderChangedCopyWith(
          ReaderChanged value, $Res Function(ReaderChanged) then) =
      _$ReaderChangedCopyWithImpl<$Res>;
  $Res call({Reader reader});
}

/// @nodoc
class _$ReaderChangedCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements $ReaderChangedCopyWith<$Res> {
  _$ReaderChangedCopyWithImpl(
      ReaderChanged _value, $Res Function(ReaderChanged) _then)
      : super(_value, (v) => _then(v as ReaderChanged));

  @override
  ReaderChanged get _value => super._value as ReaderChanged;

  @override
  $Res call({
    Object? reader = freezed,
  }) {
    return _then(ReaderChanged(
      reader == freezed
          ? _value.reader
          : reader // ignore: cast_nullable_to_non_nullable
              as Reader,
    ));
  }
}

/// @nodoc

class _$ReaderChanged extends ReaderChanged {
  const _$ReaderChanged(this.reader) : super._();

  @override
  final Reader reader;

  @override
  String toString() {
    return 'HomeState.readerChanged(reader: $reader)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ReaderChanged &&
            (identical(other.reader, reader) ||
                const DeepCollectionEquality().equals(other.reader, reader)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(reader);

  @JsonKey(ignore: true)
  @override
  $ReaderChangedCopyWith<ReaderChanged> get copyWith =>
      _$ReaderChangedCopyWithImpl<ReaderChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) pageChanged,
    required TResult Function(Reader reader) readerChanged,
    required TResult Function(PlayerInfo playerInfo) chapterOpened,
  }) {
    return readerChanged(reader);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int page)? pageChanged,
    TResult Function(Reader reader)? readerChanged,
    TResult Function(PlayerInfo playerInfo)? chapterOpened,
  }) {
    return readerChanged?.call(reader);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? pageChanged,
    TResult Function(Reader reader)? readerChanged,
    TResult Function(PlayerInfo playerInfo)? chapterOpened,
    required TResult orElse(),
  }) {
    if (readerChanged != null) {
      return readerChanged(reader);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PageChanged value) pageChanged,
    required TResult Function(ReaderChanged value) readerChanged,
    required TResult Function(ChepterOpened value) chapterOpened,
  }) {
    return readerChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PageChanged value)? pageChanged,
    TResult Function(ReaderChanged value)? readerChanged,
    TResult Function(ChepterOpened value)? chapterOpened,
  }) {
    return readerChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PageChanged value)? pageChanged,
    TResult Function(ReaderChanged value)? readerChanged,
    TResult Function(ChepterOpened value)? chapterOpened,
    required TResult orElse(),
  }) {
    if (readerChanged != null) {
      return readerChanged(this);
    }
    return orElse();
  }
}

abstract class ReaderChanged extends HomeState {
  const factory ReaderChanged(Reader reader) = _$ReaderChanged;
  const ReaderChanged._() : super._();

  Reader get reader => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReaderChangedCopyWith<ReaderChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChepterOpenedCopyWith<$Res> {
  factory $ChepterOpenedCopyWith(
          ChepterOpened value, $Res Function(ChepterOpened) then) =
      _$ChepterOpenedCopyWithImpl<$Res>;
  $Res call({PlayerInfo playerInfo});
}

/// @nodoc
class _$ChepterOpenedCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements $ChepterOpenedCopyWith<$Res> {
  _$ChepterOpenedCopyWithImpl(
      ChepterOpened _value, $Res Function(ChepterOpened) _then)
      : super(_value, (v) => _then(v as ChepterOpened));

  @override
  ChepterOpened get _value => super._value as ChepterOpened;

  @override
  $Res call({
    Object? playerInfo = freezed,
  }) {
    return _then(ChepterOpened(
      playerInfo == freezed
          ? _value.playerInfo
          : playerInfo // ignore: cast_nullable_to_non_nullable
              as PlayerInfo,
    ));
  }
}

/// @nodoc

class _$ChepterOpened extends ChepterOpened {
  const _$ChepterOpened(this.playerInfo) : super._();

  @override
  final PlayerInfo playerInfo;

  @override
  String toString() {
    return 'HomeState.chapterOpened(playerInfo: $playerInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChepterOpened &&
            (identical(other.playerInfo, playerInfo) ||
                const DeepCollectionEquality()
                    .equals(other.playerInfo, playerInfo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(playerInfo);

  @JsonKey(ignore: true)
  @override
  $ChepterOpenedCopyWith<ChepterOpened> get copyWith =>
      _$ChepterOpenedCopyWithImpl<ChepterOpened>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) pageChanged,
    required TResult Function(Reader reader) readerChanged,
    required TResult Function(PlayerInfo playerInfo) chapterOpened,
  }) {
    return chapterOpened(playerInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int page)? pageChanged,
    TResult Function(Reader reader)? readerChanged,
    TResult Function(PlayerInfo playerInfo)? chapterOpened,
  }) {
    return chapterOpened?.call(playerInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? pageChanged,
    TResult Function(Reader reader)? readerChanged,
    TResult Function(PlayerInfo playerInfo)? chapterOpened,
    required TResult orElse(),
  }) {
    if (chapterOpened != null) {
      return chapterOpened(playerInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PageChanged value) pageChanged,
    required TResult Function(ReaderChanged value) readerChanged,
    required TResult Function(ChepterOpened value) chapterOpened,
  }) {
    return chapterOpened(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PageChanged value)? pageChanged,
    TResult Function(ReaderChanged value)? readerChanged,
    TResult Function(ChepterOpened value)? chapterOpened,
  }) {
    return chapterOpened?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PageChanged value)? pageChanged,
    TResult Function(ReaderChanged value)? readerChanged,
    TResult Function(ChepterOpened value)? chapterOpened,
    required TResult orElse(),
  }) {
    if (chapterOpened != null) {
      return chapterOpened(this);
    }
    return orElse();
  }
}

abstract class ChepterOpened extends HomeState {
  const factory ChepterOpened(PlayerInfo playerInfo) = _$ChepterOpened;
  const ChepterOpened._() : super._();

  PlayerInfo get playerInfo => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChepterOpenedCopyWith<ChepterOpened> get copyWith =>
      throw _privateConstructorUsedError;
}
