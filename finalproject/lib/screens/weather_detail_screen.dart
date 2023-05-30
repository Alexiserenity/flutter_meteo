import 'package:flutter/material.dart';
import 'package:finalproject/models/city.dart';

class WeatherDetailScreen extends StatelessWidget {
  static const routeName = '/weather-detail';

  @override
  Widget build(BuildContext context) {
    final WeatherData weatherData =
    ModalRoute.of(context)!.settings.arguments as WeatherData;

    return Scaffold(
      appBar: AppBar(
        title: Text('Weather Detail'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(weatherData.cityName),
            Text(weatherData.temperature.toString()),
            Text(weatherData.weatherDescription),
          ],
        ),
      ),
    );
  }
}
