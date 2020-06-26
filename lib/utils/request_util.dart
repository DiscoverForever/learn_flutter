import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:learn_flutter/api/api.dart';

class RequestUtil {
  static Dio _dio;

  static Dio getInstance() {
    if (_dio == null) {
      BaseOptions options = new BaseOptions(
        baseUrl: Api.baseUrl,
        connectTimeout: 5000,
        receiveTimeout: 10000,
      );
      _dio = new Dio(options);
      _dio.interceptors.add(InterceptorsWrapper(onRequest: (RequestOptions options) {
        print('=============================request============================');
        print('url:${options.uri}');
        print('method ${options.method}');
        print('headers:${options.headers}');
        print('data:\n${options.data}');
        print('queryParameters:\n${options.queryParameters}');
        return options;
      }, onResponse: (Response response) {
        print('=============================response============================');
        print('url:${response.request.uri}');
        print('response:${response.data}');
        return response;
      }, onError: (DioError e) {
        print('Error url:${e.request.uri}');
        return e;
      }));
    }
    return _dio;
  }
}
