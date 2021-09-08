/// 1. Declare part '.freezed.dart' file row
/// 2. Replace BackendException by necessary class
/// 3. Fill empty space by necessary data
/// 4. Run command - flutter packages pub run build_runner build --delete-conflicting-outputs
import 'package:bloc_skeleton/common/di/exception/app_exception.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'backend_exception.freezed.dart';

/// Общее исключение, если ответ от сервера != (>= 200 && < 300)
@freezed
abstract class BackendException with _$BackendException implements AppException {
  const factory BackendException({
    required int code,
    required String message,
  }) = _BackendException;
}