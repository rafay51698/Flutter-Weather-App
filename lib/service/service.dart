// import 'dart:convert';

// import 'package:http/http.dart' as http;
// import 'package:weatherapp/model/model.dart';

// getuser() async {
//   var response = await http.get(
//     Uri.https("api.openweathermap.org",
//         "data/2.5/weather?q=karachi&appid=10530cd042fdda8d65051ca864fc86bf"),
//   );
//   var jsondata = jsonDecode(response.body);
//   WeatherModel weather = WeatherModel(
//     // description: jsondata['weather'][0]['description'],
//     city: jsondata['name'],
//     // temp: double.parse(
//     //     ((jsondata['main']['temp'].toDouble()) - 273.15).toStringAsFixed(2)),
//     humidity: jsondata['main']['humidity'],
//   );
//   // ignore: avoid_print
//   print(jsondata['name']);
//   return weather;
// }

// // Future<Weather> load_data() async {
// //   final weatherResponse = await http.get(Uri.https("api.openweathermap.org",
// //       "data/2.5/weather?q=karachi&appid=10530cd042fdda8d65051ca864fc86bf&units=metric"));

// //   if (weatherResponse.statusCode == 200) {
// //     return Weather.fromJson(jsonDecode(weatherResponse.body));
// //   } else {
// //     throw Exception('Failed to load Weather');
// //   }
// // }
