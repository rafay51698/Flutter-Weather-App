import 'package:flutter/material.dart';
import 'package:weatherapp/dataservice.dart';
import 'package:weatherapp/models.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  TextEditingController cityController = TextEditingController();
  final _dataService = DataService();
  WeatherResponse? _response;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            if (_response != null)
              Column(
                children: [
                  Text(
                    _response!.cityName,
                    style: const TextStyle(fontSize: 30),
                  ),
                  Text(
                    '${_response!.temp}',
                    style: const TextStyle(fontSize: 40),
                  ),
                  Text(
                    _response!.description,
                    style: const TextStyle(fontSize: 20),
                  ),
                  Text(
                    'Humidity: ${_response!.humidity}',
                    style: const TextStyle(fontSize: 20),
                  ),
                ],
              ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: SizedBox(
                height: 30,
                width: 200,
                child: TextField(
                    controller: cityController,
                    decoration: const InputDecoration(
                      hintText: 'city',
                    ),
                    textAlign: TextAlign.center),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                search();
              },
              child: const Text('search'),
            ),
          ],
        ),
      ),
    );
  }

  search() async {
    final response = await _dataService.getWeather(cityController.text);
    setState(() => _response = response);
  }
}
