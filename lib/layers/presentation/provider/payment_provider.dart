import 'package:flutter/material.dart';

class PaymentProvider extends ChangeNotifier {
  int coffeePrice = 20;
  int count = 1;

  void incrementCount() {
    count++;
    notifyListeners();
  }

  void deIncrementCount() {
    if (count > 0) {
      count--;
      notifyListeners();
    }
  }
}
