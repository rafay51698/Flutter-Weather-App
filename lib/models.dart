// import 'dart:convert';
// import 'dart:html';

class WeatherResponse {
  final double temp;
  final String cityName;
  final num humidity;
  final String description;
  WeatherResponse({
    required this.cityName,
    required this.temp,
    required this.description,
    required this.humidity,
  });
  factory WeatherResponse.fromJson(Map<String, dynamic> json) {
    final cityName = json['name'];
    final temp = json['main']['temp'];
    final humidity = json['main']['humidity'];
    final description = json['weather'][0]['description'];

    return WeatherResponse(
        cityName: cityName,
        temp: temp,
        description: description,
        humidity: humidity);
  }
}
