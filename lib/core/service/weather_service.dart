import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:uzinfotasks/core/models/weather_model.dart';

Future<WeatherModel> getWeather() async {
  debugPrint("funksiya ishga tushdi");

  final res = await http.get(
    Uri.parse(
      'http://my2.dev.gov.uz/azamat/ru/weather/get-details?region=tashkent',
    ),
  );
  debugPrint("if dan oldin");

  if (res.statusCode == 200) {
    debugPrint("if ga kirdi bodyni koramiza ${res.body}");

    return WeatherModel.fromJson(jsonDecode(res.body));
  } else {
    debugPrint("else ga otb ketti");
    throw Exception("Xato ketti buyogi");
  }
}
