// import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weatherapp/models.dart';

class DataService {
  Future<WeatherResponse> getWeather(String city) async {
    final queryparameters = {
      'q': city,
      'appid': '006bbe9e1f9e5b67a81a3b5cae0ba875',
      'units': 'metric'
    };
    final uri = Uri.https(
        "api.openweathermap.org", "/data/2.5/weather", queryparameters);
    final response = await http.get(uri);
    // print(response.body);
    final json = jsonDecode(response.body);
    return WeatherResponse.fromJson(json);
  }
}
