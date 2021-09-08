import 'dart:io';

import 'package:dio/dio.dart';

/// Провайдер Dio с настройками.
class DioProvider{
  final String _baseUrl;

  const DioProvider({required String baseUrl,}) : _baseUrl = baseUrl;

  Dio get() {
    final dio = Dio();
    // Конфигурация
    dio.options.baseUrl = _baseUrl;
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (RequestOptions options, handler) async {
        if (!options.headers.containsKey(HttpHeaders.authorizationHeader)) {
          // options.headers[HttpHeaders.authorizationHeader] = 'Bearer ' + await _accountPrefs.getToken();
        }
      },
    ));
    return dio;
  }
}