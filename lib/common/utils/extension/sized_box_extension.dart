import 'package:flutter/material.dart';

extension EmptyPadding on num {
  // example usage => 50.ph - 50.pw

  SizedBox get ph => SizedBox(height: toDouble());
  SizedBox get pw => SizedBox(width: toDouble());
}
