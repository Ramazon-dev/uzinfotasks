import 'package:flutter/material.dart';
import 'package:uzinfotasks/core/constants/sizeconfig.dart';

ThemeData getLightThemeData() {
  return ThemeData(
    backgroundColor: Colors.blue.shade800,
    textTheme: TextTheme(
      bodyText1: TextStyle(
        color: Colors.white,
        // fontSize: getHeight(20),
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
