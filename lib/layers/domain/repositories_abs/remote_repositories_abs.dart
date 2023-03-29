import 'package:starbucks_app/layers/domain/model/menu_model.dart';

abstract class RemoteRepositoriesAbs {
  Future<StarbucksMenuModel?> getMenu();
}
