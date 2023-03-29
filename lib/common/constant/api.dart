class AppApi {
  static const String _baseUrl = 'https://www.starbucks.com/bff';

  ///-------------------------------------------table name-------------------------------------------
  static const String _orderTable = 'ordering';

  ///-------------------------------------------table name-------------------------------------------
  static String getAll = '/$_orderTable/menu/';

  static String getRequestUrl(String path) {
    return _baseUrl + path;
  }
}
