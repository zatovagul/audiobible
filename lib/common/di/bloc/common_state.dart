import 'package:bloc_skeleton/common/di/exception/app_exception.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'base_state.dart';

part 'common_state.freezed.dart';

/// Общие состояния всех Bloc.
@freezed
abstract class CommonState with _$CommonState implements BaseState {
  const CommonState._();
  const factory CommonState.init() = CommonInitial;
  const factory CommonState.loading() = CommonLoading;
  const factory CommonState.failure({required AppException exception}) = CommonFailure;
  const factory CommonState.error({required String errorMessage}) = CommonError;
}