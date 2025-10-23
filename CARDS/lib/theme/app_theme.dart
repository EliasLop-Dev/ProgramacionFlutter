import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.deepOrangeAccent;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: Colors.amber,
    appBarTheme: const AppBarTheme(color: primary, elevation: 0),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: primary),
    ),
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: Colors.amber,
    appBarTheme: const AppBarTheme(color: primary, elevation: 0),
  );
}
