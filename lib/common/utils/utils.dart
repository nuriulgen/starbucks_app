class Utils {
  // make lazy singleton class
  static Utils? _instance;

  Utils._init();

  static Utils get instance {
    return _instance ??= Utils._init();
  }

  String getLottiePath(String path) {
    return "assets/json/$path.json";
  }
}
