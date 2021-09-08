import 'dart:io';

import 'package:bloc_skeleton/common/di/exception/app_exception.dart';
import 'package:bloc_skeleton/common/util/logger.dart';
import 'package:bloc_skeleton/data/model/exceptions/app_socket_exception.dart';
import 'package:bloc_skeleton/data/model/exceptions/auth_exception.dart';
import 'package:bloc_skeleton/data/model/exceptions/backend_exception.dart';
import 'package:bloc_skeleton/data/model/exceptions/server_exception.dart';
import 'package:dio/dio.dart';

/// Обработчик ошибок.
class ErrorHandler {

  void handle(e){
    switch (e?.runtimeType) {
      case SocketException:
        throw AppSocketException();
      case DioError:
        final dioError = e as DioError;
        if (dioError.error is SocketException) {
          throw AppSocketException();
        }
        final response = dioError.response;
        logger.e('Got error : ${response!.statusCode} -> ${response.statusMessage}');
        logger.e('Response : $response');
        if (response.statusCode == 401 || response.statusCode == 403) {
          // logOut();
          throw AuthException(code: response.statusCode!);
        } else if ((response.statusCode??0) >= 500) {
          throw ServerException(code: response.statusCode!);
        } else{
          throw BackendException(
              code: response.statusCode!,
              message: response.statusMessage!
          );
        }
        break;
      default:
        throw AppException();
    }
  }
}