// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'common_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CommonStateTearOff {
  const _$CommonStateTearOff();

  CommonInitial init() {
    return const CommonInitial();
  }

  CommonLoading loading() {
    return const CommonLoading();
  }

  CommonFailure failure({required AppException exception}) {
    return CommonFailure(
      exception: exception,
    );
  }

  CommonError error({required String errorMessage}) {
    return CommonError(
      errorMessage: errorMessage,
    );
  }
}

/// @nodoc
const $CommonState = _$CommonStateTearOff();

/// @nodoc
mixin _$CommonState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(AppException exception) failure,
    required TResult Function(String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(AppException exception)? failure,
    TResult Function(String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(AppException exception)? failure,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CommonInitial value) init,
    required TResult Function(CommonLoading value) loading,
    required TResult Function(CommonFailure value) failure,
    required TResult Function(CommonError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CommonInitial value)? init,
    TResult Function(CommonLoading value)? loading,
    TResult Function(CommonFailure value)? failure,
    TResult Function(CommonError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CommonInitial value)? init,
    TResult Function(CommonLoading value)? loading,
    TResult Function(CommonFailure value)? failure,
    TResult Function(CommonError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonStateCopyWith<$Res> {
  factory $CommonStateCopyWith(
          CommonState value, $Res Function(CommonState) then) =
      _$CommonStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommonStateCopyWithImpl<$Res> implements $CommonStateCopyWith<$Res> {
  _$CommonStateCopyWithImpl(this._value, this._then);

  final CommonState _value;
  // ignore: unused_field
  final $Res Function(CommonState) _then;
}

/// @nodoc
abstract class $CommonInitialCopyWith<$Res> {
  factory $CommonInitialCopyWith(
          CommonInitial value, $Res Function(CommonInitial) then) =
      _$CommonInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommonInitialCopyWithImpl<$Res> extends _$CommonStateCopyWithImpl<$Res>
    implements $CommonInitialCopyWith<$Res> {
  _$CommonInitialCopyWithImpl(
      CommonInitial _value, $Res Function(CommonInitial) _then)
      : super(_value, (v) => _then(v as CommonInitial));

  @override
  CommonInitial get _value => super._value as CommonInitial;
}

/// @nodoc

class _$CommonInitial extends CommonInitial {
  const _$CommonInitial() : super._();

  @override
  String toString() {
    return 'CommonState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CommonInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(AppException exception) failure,
    required TResult Function(String errorMessage) error,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(AppException exception)? failure,
    TResult Function(String errorMessage)? error,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(AppException exception)? failure,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CommonInitial value) init,
    required TResult Function(CommonLoading value) loading,
    required TResult Function(CommonFailure value) failure,
    required TResult Function(CommonError value) error,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CommonInitial value)? init,
    TResult Function(CommonLoading value)? loading,
    TResult Function(CommonFailure value)? failure,
    TResult Function(CommonError value)? error,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CommonInitial value)? init,
    TResult Function(CommonLoading value)? loading,
    TResult Function(CommonFailure value)? failure,
    TResult Function(CommonError value)? error,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class CommonInitial extends CommonState {
  const factory CommonInitial() = _$CommonInitial;
  const CommonInitial._() : super._();
}

/// @nodoc
abstract class $CommonLoadingCopyWith<$Res> {
  factory $CommonLoadingCopyWith(
          CommonLoading value, $Res Function(CommonLoading) then) =
      _$CommonLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommonLoadingCopyWithImpl<$Res> extends _$CommonStateCopyWithImpl<$Res>
    implements $CommonLoadingCopyWith<$Res> {
  _$CommonLoadingCopyWithImpl(
      CommonLoading _value, $Res Function(CommonLoading) _then)
      : super(_value, (v) => _then(v as CommonLoading));

  @override
  CommonLoading get _value => super._value as CommonLoading;
}

/// @nodoc

class _$CommonLoading extends CommonLoading {
  const _$CommonLoading() : super._();

  @override
  String toString() {
    return 'CommonState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CommonLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(AppException exception) failure,
    required TResult Function(String errorMessage) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(AppException exception)? failure,
    TResult Function(String errorMessage)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(AppException exception)? failure,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CommonInitial value) init,
    required TResult Function(CommonLoading value) loading,
    required TResult Function(CommonFailure value) failure,
    required TResult Function(CommonError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CommonInitial value)? init,
    TResult Function(CommonLoading value)? loading,
    TResult Function(CommonFailure value)? failure,
    TResult Function(CommonError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CommonInitial value)? init,
    TResult Function(CommonLoading value)? loading,
    TResult Function(CommonFailure value)? failure,
    TResult Function(CommonError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CommonLoading extends CommonState {
  const factory CommonLoading() = _$CommonLoading;
  const CommonLoading._() : super._();
}

/// @nodoc
abstract class $CommonFailureCopyWith<$Res> {
  factory $CommonFailureCopyWith(
          CommonFailure value, $Res Function(CommonFailure) then) =
      _$CommonFailureCopyWithImpl<$Res>;
  $Res call({AppException exception});

  $AppExceptionCopyWith<$Res> get exception;
}

/// @nodoc
class _$CommonFailureCopyWithImpl<$Res> extends _$CommonStateCopyWithImpl<$Res>
    implements $CommonFailureCopyWith<$Res> {
  _$CommonFailureCopyWithImpl(
      CommonFailure _value, $Res Function(CommonFailure) _then)
      : super(_value, (v) => _then(v as CommonFailure));

  @override
  CommonFailure get _value => super._value as CommonFailure;

  @override
  $Res call({
    Object? exception = freezed,
  }) {
    return _then(CommonFailure(
      exception: exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as AppException,
    ));
  }

  @override
  $AppExceptionCopyWith<$Res> get exception {
    return $AppExceptionCopyWith<$Res>(_value.exception, (value) {
      return _then(_value.copyWith(exception: value));
    });
  }
}

/// @nodoc

class _$CommonFailure extends CommonFailure {
  const _$CommonFailure({required this.exception}) : super._();

  @override
  final AppException exception;

  @override
  String toString() {
    return 'CommonState.failure(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommonFailure &&
            (identical(other.exception, exception) ||
                const DeepCollectionEquality()
                    .equals(other.exception, exception)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exception);

  @JsonKey(ignore: true)
  @override
  $CommonFailureCopyWith<CommonFailure> get copyWith =>
      _$CommonFailureCopyWithImpl<CommonFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(AppException exception) failure,
    required TResult Function(String errorMessage) error,
  }) {
    return failure(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(AppException exception)? failure,
    TResult Function(String errorMessage)? error,
  }) {
    return failure?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(AppException exception)? failure,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CommonInitial value) init,
    required TResult Function(CommonLoading value) loading,
    required TResult Function(CommonFailure value) failure,
    required TResult Function(CommonError value) error,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CommonInitial value)? init,
    TResult Function(CommonLoading value)? loading,
    TResult Function(CommonFailure value)? failure,
    TResult Function(CommonError value)? error,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CommonInitial value)? init,
    TResult Function(CommonLoading value)? loading,
    TResult Function(CommonFailure value)? failure,
    TResult Function(CommonError value)? error,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class CommonFailure extends CommonState {
  const factory CommonFailure({required AppException exception}) =
      _$CommonFailure;
  const CommonFailure._() : super._();

  AppException get exception => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommonFailureCopyWith<CommonFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonErrorCopyWith<$Res> {
  factory $CommonErrorCopyWith(
          CommonError value, $Res Function(CommonError) then) =
      _$CommonErrorCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

/// @nodoc
class _$CommonErrorCopyWithImpl<$Res> extends _$CommonStateCopyWithImpl<$Res>
    implements $CommonErrorCopyWith<$Res> {
  _$CommonErrorCopyWithImpl(
      CommonError _value, $Res Function(CommonError) _then)
      : super(_value, (v) => _then(v as CommonError));

  @override
  CommonError get _value => super._value as CommonError;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(CommonError(
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CommonError extends CommonError {
  const _$CommonError({required this.errorMessage}) : super._();

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'CommonState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommonError &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errorMessage);

  @JsonKey(ignore: true)
  @override
  $CommonErrorCopyWith<CommonError> get copyWith =>
      _$CommonErrorCopyWithImpl<CommonError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(AppException exception) failure,
    required TResult Function(String errorMessage) error,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(AppException exception)? failure,
    TResult Function(String errorMessage)? error,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(AppException exception)? failure,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CommonInitial value) init,
    required TResult Function(CommonLoading value) loading,
    required TResult Function(CommonFailure value) failure,
    required TResult Function(CommonError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CommonInitial value)? init,
    TResult Function(CommonLoading value)? loading,
    TResult Function(CommonFailure value)? failure,
    TResult Function(CommonError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CommonInitial value)? init,
    TResult Function(CommonLoading value)? loading,
    TResult Function(CommonFailure value)? failure,
    TResult Function(CommonError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CommonError extends CommonState {
  const factory CommonError({required String errorMessage}) = _$CommonError;
  const CommonError._() : super._();

  String get errorMessage => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommonErrorCopyWith<CommonError> get copyWith =>
      throw _privateConstructorUsedError;
}
