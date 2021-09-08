// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'server_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ServerExceptionTearOff {
  const _$ServerExceptionTearOff();

  _ServerException call({required int code}) {
    return _ServerException(
      code: code,
    );
  }
}

/// @nodoc
const $ServerException = _$ServerExceptionTearOff();

/// @nodoc
mixin _$ServerException {
  int get code => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ServerExceptionCopyWith<ServerException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerExceptionCopyWith<$Res> {
  factory $ServerExceptionCopyWith(
          ServerException value, $Res Function(ServerException) then) =
      _$ServerExceptionCopyWithImpl<$Res>;
  $Res call({int code});
}

/// @nodoc
class _$ServerExceptionCopyWithImpl<$Res>
    implements $ServerExceptionCopyWith<$Res> {
  _$ServerExceptionCopyWithImpl(this._value, this._then);

  final ServerException _value;
  // ignore: unused_field
  final $Res Function(ServerException) _then;

  @override
  $Res call({
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ServerExceptionCopyWith<$Res>
    implements $ServerExceptionCopyWith<$Res> {
  factory _$ServerExceptionCopyWith(
          _ServerException value, $Res Function(_ServerException) then) =
      __$ServerExceptionCopyWithImpl<$Res>;
  @override
  $Res call({int code});
}

/// @nodoc
class __$ServerExceptionCopyWithImpl<$Res>
    extends _$ServerExceptionCopyWithImpl<$Res>
    implements _$ServerExceptionCopyWith<$Res> {
  __$ServerExceptionCopyWithImpl(
      _ServerException _value, $Res Function(_ServerException) _then)
      : super(_value, (v) => _then(v as _ServerException));

  @override
  _ServerException get _value => super._value as _ServerException;

  @override
  $Res call({
    Object? code = freezed,
  }) {
    return _then(_ServerException(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ServerException implements _ServerException {
  const _$_ServerException({required this.code});

  @override
  final int code;

  @override
  String toString() {
    return 'ServerException(code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ServerException &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(code);

  @JsonKey(ignore: true)
  @override
  _$ServerExceptionCopyWith<_ServerException> get copyWith =>
      __$ServerExceptionCopyWithImpl<_ServerException>(this, _$identity);
}

abstract class _ServerException implements ServerException {
  const factory _ServerException({required int code}) = _$_ServerException;

  @override
  int get code => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ServerExceptionCopyWith<_ServerException> get copyWith =>
      throw _privateConstructorUsedError;
}
