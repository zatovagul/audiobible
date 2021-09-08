import 'package:bloc_skeleton/common/di/exception/app_exception.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_socket_exception.freezed.dart';

/// Исключение, если отсутствует интернет
@freezed
abstract class AppSocketException with _$AppSocketException implements AppException {
  const factory AppSocketException() = _AppSocketException;
}