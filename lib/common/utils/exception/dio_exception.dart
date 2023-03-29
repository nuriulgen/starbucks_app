import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class ShowDebug {
  // It was created to catch errors from the service.
  static void showDioError<T>(DioError error, T type) {
    if (kDebugMode) {
      print(error.message);
      print(error.response?.statusCode);
      print(type);
    }
  }
}
