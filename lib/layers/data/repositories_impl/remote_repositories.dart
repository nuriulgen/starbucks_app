import 'package:dio/dio.dart';
import 'package:starbucks_app/layers/domain/model/menu_model.dart';
import 'package:starbucks_app/layers/domain/repositories_abs/remote_repositories_abs.dart';

import '../../../common/utils/exception/dio_exception.dart';
import '../remote/remote_datasources.dart';

class RemoteRepositories extends RemoteRepositoriesAbs {
  RemoteRepositories({required this.remoteDataSource});
  RemoteDataSource remoteDataSource;

  @override
  Future<StarbucksMenuModel?> getMenu() async {
    try {
      return await remoteDataSource.getMenu();
    } on DioError catch (exception) {
      ShowDebug.showDioError(exception, this);
    }
    return null;
  }
}
