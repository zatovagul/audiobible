// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'backend_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BackendExceptionTearOff {
  const _$BackendExceptionTearOff();

  _BackendException call({required int code, required String message}) {
    return _BackendException(
      code: code,
      message: message,
    );
  }
}

/// @nodoc
const $BackendException = _$BackendExceptionTearOff();

/// @nodoc
mixin _$BackendException {
  int get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BackendExceptionCopyWith<BackendException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BackendExceptionCopyWith<$Res> {
  factory $BackendExceptionCopyWith(
          BackendException value, $Res Function(BackendException) then) =
      _$BackendExceptionCopyWithImpl<$Res>;
  $Res call({int code, String message});
}

/// @nodoc
class _$BackendExceptionCopyWithImpl<$Res>
    implements $BackendExceptionCopyWith<$Res> {
  _$BackendExceptionCopyWithImpl(this._value, this._then);

  final BackendException _value;
  // ignore: unused_field
  final $Res Function(BackendException) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$BackendExceptionCopyWith<$Res>
    implements $BackendExceptionCopyWith<$Res> {
  factory _$BackendExceptionCopyWith(
          _BackendException value, $Res Function(_BackendException) then) =
      __$BackendExceptionCopyWithImpl<$Res>;
  @override
  $Res call({int code, String message});
}

/// @nodoc
class __$BackendExceptionCopyWithImpl<$Res>
    extends _$BackendExceptionCopyWithImpl<$Res>
    implements _$BackendExceptionCopyWith<$Res> {
  __$BackendExceptionCopyWithImpl(
      _BackendException _value, $Res Function(_BackendException) _then)
      : super(_value, (v) => _then(v as _BackendException));

  @override
  _BackendException get _value => super._value as _BackendException;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(_BackendException(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_BackendException implements _BackendException {
  const _$_BackendException({required this.code, required this.message});

  @override
  final int code;
  @override
  final String message;

  @override
  String toString() {
    return 'BackendException(code: $code, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BackendException &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$BackendExceptionCopyWith<_BackendException> get copyWith =>
      __$BackendExceptionCopyWithImpl<_BackendException>(this, _$identity);
}

abstract class _BackendException implements BackendException {
  const factory _BackendException(
      {required int code, required String message}) = _$_BackendException;

  @override
  int get code => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BackendExceptionCopyWith<_BackendException> get copyWith =>
      throw _privateConstructorUsedError;
}
