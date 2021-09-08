import 'package:bloc_skeleton/common/util/logger.dart';
import 'package:bloc_skeleton/data/model/exceptions/app_socket_exception.dart';
import 'package:bloc_skeleton/data/model/exceptions/auth_exception.dart';
import 'package:bloc_skeleton/data/model/exceptions/backend_exception.dart';
import 'package:bloc_skeleton/data/model/exceptions/server_exception.dart';

import 'common_state.dart';

/// Дополнительные обязательные методы Bloc.
mixin BaseBloc {

  // Обработка ошибок
  Stream<CommonState> mapErrorToState(Exception e, [StackTrace? st]) async* {
    if (e is AppSocketException) {
      yield CommonState.failure(exception: e);
      logger.e('SocketException -> Network problem');
    } else if (e is AuthException) {
      yield CommonState.failure(exception: e);
      logger.e('Auth error -> ${e.code}');
    } else if (e is BackendException) {
      yield CommonState.failure(exception: e);
      logger.e('Back error -> ${e.code}, ${e.message}');
    } else if (e is ServerException) {
      yield CommonState.failure(exception: e);
      logger.e('Server error -> ${e.code}');
    } else {
      yield CommonState.error(errorMessage: e.toString());
      logger.e('Error -> ${e.toString}, stack trace: $st');
    }
  }

}