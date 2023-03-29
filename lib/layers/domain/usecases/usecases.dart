import 'package:starbucks_app/layers/data/repositories_impl/remote_repositories.dart';
import 'package:starbucks_app/layers/domain/model/menu_model.dart';

class UseCases {
  UseCases({required this.remoteRepositories});
  RemoteRepositories remoteRepositories;

  Future<StarbucksMenuModel?> getMenu() async {
    return await remoteRepositories.getMenu();
  }
}
