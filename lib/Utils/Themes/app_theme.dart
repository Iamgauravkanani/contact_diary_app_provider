import 'package:flutter/material.dart';

class Themes {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorSchemeSeed: Colors.red,
    brightness: Brightness.light,
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 26,
        color: Colors.blue,
      ),
    ),
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(
        fontSize: 23,
        color: Colors.red,
        fontWeight: FontWeight.bold,
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    colorSchemeSeed: Colors.yellow,
    brightness: Brightness.dark,
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontSize: 35,
        color: Colors.white,
      ),
    ),
  );
}
