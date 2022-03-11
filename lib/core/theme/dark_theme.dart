import 'package:flutter/material.dart';

ThemeData getDarkThemeData() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.indigo[900],
    textTheme: const TextTheme(
      bodyText2: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w900,
      ),
      bodyText1: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w900,
      ),
    ),
  );
}
