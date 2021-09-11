// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'books_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BookEventTearOff {
  const _$BookEventTearOff();

  _SwitchBook switchBook(bool old) {
    return _SwitchBook(
      old,
    );
  }
}

/// @nodoc
const $BookEvent = _$BookEventTearOff();

/// @nodoc
mixin _$BookEvent {
  bool get old => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool old) switchBook,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool old)? switchBook,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool old)? switchBook,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SwitchBook value) switchBook,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SwitchBook value)? switchBook,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SwitchBook value)? switchBook,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookEventCopyWith<BookEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookEventCopyWith<$Res> {
  factory $BookEventCopyWith(BookEvent value, $Res Function(BookEvent) then) =
      _$BookEventCopyWithImpl<$Res>;
  $Res call({bool old});
}

/// @nodoc
class _$BookEventCopyWithImpl<$Res> implements $BookEventCopyWith<$Res> {
  _$BookEventCopyWithImpl(this._value, this._then);

  final BookEvent _value;
  // ignore: unused_field
  final $Res Function(BookEvent) _then;

  @override
  $Res call({
    Object? old = freezed,
  }) {
    return _then(_value.copyWith(
      old: old == freezed
          ? _value.old
          : old // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$SwitchBookCopyWith<$Res> implements $BookEventCopyWith<$Res> {
  factory _$SwitchBookCopyWith(
          _SwitchBook value, $Res Function(_SwitchBook) then) =
      __$SwitchBookCopyWithImpl<$Res>;
  @override
  $Res call({bool old});
}

/// @nodoc
class __$SwitchBookCopyWithImpl<$Res> extends _$BookEventCopyWithImpl<$Res>
    implements _$SwitchBookCopyWith<$Res> {
  __$SwitchBookCopyWithImpl(
      _SwitchBook _value, $Res Function(_SwitchBook) _then)
      : super(_value, (v) => _then(v as _SwitchBook));

  @override
  _SwitchBook get _value => super._value as _SwitchBook;

  @override
  $Res call({
    Object? old = freezed,
  }) {
    return _then(_SwitchBook(
      old == freezed
          ? _value.old
          : old // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SwitchBook extends _SwitchBook {
  const _$_SwitchBook(this.old) : super._();

  @override
  final bool old;

  @override
  String toString() {
    return 'BookEvent.switchBook(old: $old)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SwitchBook &&
            (identical(other.old, old) ||
                const DeepCollectionEquality().equals(other.old, old)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(old);

  @JsonKey(ignore: true)
  @override
  _$SwitchBookCopyWith<_SwitchBook> get copyWith =>
      __$SwitchBookCopyWithImpl<_SwitchBook>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool old) switchBook,
  }) {
    return switchBook(old);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool old)? switchBook,
  }) {
    return switchBook?.call(old);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool old)? switchBook,
    required TResult orElse(),
  }) {
    if (switchBook != null) {
      return switchBook(old);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SwitchBook value) switchBook,
  }) {
    return switchBook(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SwitchBook value)? switchBook,
  }) {
    return switchBook?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SwitchBook value)? switchBook,
    required TResult orElse(),
  }) {
    if (switchBook != null) {
      return switchBook(this);
    }
    return orElse();
  }
}

abstract class _SwitchBook extends BookEvent {
  const factory _SwitchBook(bool old) = _$_SwitchBook;
  const _SwitchBook._() : super._();

  @override
  bool get old => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SwitchBookCopyWith<_SwitchBook> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$BookStateTearOff {
  const _$BookStateTearOff();

  BookSwitched bookSwitched(bool isOld) {
    return BookSwitched(
      isOld,
    );
  }
}

/// @nodoc
const $BookState = _$BookStateTearOff();

/// @nodoc
mixin _$BookState {
  bool get isOld => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isOld) bookSwitched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isOld)? bookSwitched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isOld)? bookSwitched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookSwitched value) bookSwitched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BookSwitched value)? bookSwitched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookSwitched value)? bookSwitched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookStateCopyWith<BookState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookStateCopyWith<$Res> {
  factory $BookStateCopyWith(BookState value, $Res Function(BookState) then) =
      _$BookStateCopyWithImpl<$Res>;
  $Res call({bool isOld});
}

/// @nodoc
class _$BookStateCopyWithImpl<$Res> implements $BookStateCopyWith<$Res> {
  _$BookStateCopyWithImpl(this._value, this._then);

  final BookState _value;
  // ignore: unused_field
  final $Res Function(BookState) _then;

  @override
  $Res call({
    Object? isOld = freezed,
  }) {
    return _then(_value.copyWith(
      isOld: isOld == freezed
          ? _value.isOld
          : isOld // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class $BookSwitchedCopyWith<$Res> implements $BookStateCopyWith<$Res> {
  factory $BookSwitchedCopyWith(
          BookSwitched value, $Res Function(BookSwitched) then) =
      _$BookSwitchedCopyWithImpl<$Res>;
  @override
  $Res call({bool isOld});
}

/// @nodoc
class _$BookSwitchedCopyWithImpl<$Res> extends _$BookStateCopyWithImpl<$Res>
    implements $BookSwitchedCopyWith<$Res> {
  _$BookSwitchedCopyWithImpl(
      BookSwitched _value, $Res Function(BookSwitched) _then)
      : super(_value, (v) => _then(v as BookSwitched));

  @override
  BookSwitched get _value => super._value as BookSwitched;

  @override
  $Res call({
    Object? isOld = freezed,
  }) {
    return _then(BookSwitched(
      isOld == freezed
          ? _value.isOld
          : isOld // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$BookSwitched extends BookSwitched {
  const _$BookSwitched(this.isOld) : super._();

  @override
  final bool isOld;

  @override
  String toString() {
    return 'BookState.bookSwitched(isOld: $isOld)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BookSwitched &&
            (identical(other.isOld, isOld) ||
                const DeepCollectionEquality().equals(other.isOld, isOld)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isOld);

  @JsonKey(ignore: true)
  @override
  $BookSwitchedCopyWith<BookSwitched> get copyWith =>
      _$BookSwitchedCopyWithImpl<BookSwitched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isOld) bookSwitched,
  }) {
    return bookSwitched(isOld);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isOld)? bookSwitched,
  }) {
    return bookSwitched?.call(isOld);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isOld)? bookSwitched,
    required TResult orElse(),
  }) {
    if (bookSwitched != null) {
      return bookSwitched(isOld);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookSwitched value) bookSwitched,
  }) {
    return bookSwitched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BookSwitched value)? bookSwitched,
  }) {
    return bookSwitched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookSwitched value)? bookSwitched,
    required TResult orElse(),
  }) {
    if (bookSwitched != null) {
      return bookSwitched(this);
    }
    return orElse();
  }
}

abstract class BookSwitched extends BookState {
  const factory BookSwitched(bool isOld) = _$BookSwitched;
  const BookSwitched._() : super._();

  @override
  bool get isOld => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $BookSwitchedCopyWith<BookSwitched> get copyWith =>
      throw _privateConstructorUsedError;
}
