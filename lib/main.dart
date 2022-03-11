import 'package:flutter/material.dart';
import 'package:uzinfotasks/core/theme/dark_theme.dart';
import 'package:uzinfotasks/screens/choosing_page/choosing_page.dart';
import 'package:uzinfotasks/screens/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: getDarkThemeData(),
      home: const ChoosingPage(),
    );
  }
}
