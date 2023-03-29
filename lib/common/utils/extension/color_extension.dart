import 'package:flutter/material.dart';

extension ColorExtension on BuildContext {
  Color get white => Colors.white;
  Color get black => Colors.black;
  Color get black100 => Colors.black38;

  Color get transparent => const Color(0x00ffffff);
  Color get dark => const Color(0xFF2E2D38);
  Color get darkGreen => const Color(0xFF1D4D4F);
  Color get mainGreen => const Color(0xFF4AA366);
  Color get grey => const Color(0xFF6F8094);
  Color get darkGrey => const Color(0xFF4D5661);
  Color get buttonGrey => const Color(0xFFDFE4EC);
  Color get softGrey => const Color(0xFFEFF4FD);
}
