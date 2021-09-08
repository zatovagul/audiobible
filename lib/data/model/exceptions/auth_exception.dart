/// 1. Declare part '.freezed.dart' file row
/// 2. Replace AuthException by necessary class
/// 3. Fill empty space by necessary data
/// 4. Run command - flutter packages pub run build_runner build --delete-conflicting-outputs
import 'package:bloc_skeleton/common/di/exception/app_exception.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'auth_exception.freezed.dart';

/// Исключение, если разлогинились (ответ сервера == 401 или 403)
@freezed
abstract class AuthException with _$AuthException implements AppException {
  const factory AuthException({
    required int code,
  }) = _AuthException;
}