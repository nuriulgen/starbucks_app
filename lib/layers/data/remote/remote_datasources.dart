import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:starbucks_app/layers/domain/model/menu_model.dart';

import '../../../common/constant/api.dart';
import '../../../common/utils/exception/dio_exception.dart';

class RemoteDataSource {
  var dio = Dio();

  Future<StarbucksMenuModel?> getMenu() async {
    Response? httpResponse = await requestServiceCallWithJson(
      url: AppApi.getRequestUrl(AppApi.getAll),
    );
    
    final result = httpResponse?.data;

    if (result is Map<String, dynamic>) {
      return StarbucksMenuModel.fromJson(result);
    }
    return null;
  }

  Future<Response?> requestServiceCallWithJson(
      {required String url, String? json}) async {
    try {
      Response response;
      if (json != null) {
        response = await dio.post(url, data: json);
      } else {
        response = await dio.get(url);
      }

      final int statusCode = response.statusCode ?? 0;
      if (kDebugMode) {
        print(statusCode);
      }
      return response;
    } on DioError catch (error) {
      ShowDebug.showDioError(error, this);
    }
    return null;
  }
}
