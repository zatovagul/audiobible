import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_exception.freezed.dart';

/// Интерфейс для всех Exception в приложении
@freezed
abstract class AppException with _$AppException implements Exception {
  const factory AppException() = _AppException;
}