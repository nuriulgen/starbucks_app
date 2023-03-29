import 'package:flutter/material.dart';

class OrderProvider extends ChangeNotifier {
  List<String> tabBarTitle = [
    'Çok Satanlar',
    'Yiyecek',
    'Yeniler',
    'Kahveler',
  ];

  List<String> coffeeTitleList = [
    'Hazelnut Coffee',
    'Caramel Frappucino',
    'Mocha Frappuccino',
    'Espresso Frappuccino',
  ];

  List<String> imagePathList = [
    'drinks_hazelnut',
    'drinks_caramel',
    'drinks_mocha',
    'drinks_espresso',
  ];
}
