import 'dart:convert';

import 'package:dio/dio.dart';

class RequestUtil {
  static Dio _dio;
  static Dio getInstance() {
    if (_dio == null) {
      BaseOptions options = new BaseOptions(
        baseUrl: 'https://www.easy-mock.com/mock/5d305b107d6f934a01998c0b',
        connectTimeout: 5000,
        receiveTimeout: 3000,
      );
      _dio = new Dio(options);
      _dio.interceptors.add(InterceptorsWrapper(onRequest: (RequestOptions options) {
        print(options);
        return options;
      }, onResponse: (Response response) {
        return response;
      }, onError: (DioError e) {
        return e;
      }));
    }
    return _dio;
  }
}
