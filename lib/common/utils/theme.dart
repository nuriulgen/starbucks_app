import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTheme {
  // Singleton
  AppTheme._();
  static final instance = AppTheme._();

  final lightTheme = ThemeData(
    // customized for light theme.
    appBarTheme: const AppBarTheme(
        backgroundColor: Color(0x0fffffff),
        elevation: 0.0,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        iconTheme: IconThemeData(color: Colors.white)),
    textTheme: const TextTheme(
        displaySmall: TextStyle(fontSize: 14, color: Colors.black),
        displayMedium: TextStyle(fontSize: 18, color: Colors.black),
        displayLarge: TextStyle(fontSize: 24, color: Colors.black)),
    scaffoldBackgroundColor: const Color(0xFFF7F8FA),
  );
 
}
