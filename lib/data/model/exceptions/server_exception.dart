/// 1. Declare part '.freezed.dart' file row
/// 2. Replace ServerException by necessary class
/// 3. Fill empty space by necessary data
/// 4. Run command - flutter packages pub run build_runner build --delete-conflicting-outputs
import 'package:bloc_skeleton/common/di/exception/app_exception.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'server_exception.freezed.dart';

/// Исключение, если ошибка сервера (ответ сервера >= 500)
@freezed
abstract class ServerException with _$ServerException implements AppException {
  const factory ServerException({
    required int code,
  }) = _ServerException;
}