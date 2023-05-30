import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:finalproject/models/city.dart';

class WeatherService {
  final String apiKey = '763d8d13c1e34b1abdb145213232305';

  Future<WeatherData> getWeatherData(String cityName) async {
    final String apiUrl =
        'https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=$apiKey';

    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      final String cityName = jsonData['name'];
      final double temperature = jsonData['main']['temp'];
      final String weatherDescription = jsonData['weather'][0]['description'];

      return WeatherData(
        cityName: cityName,
        temperature: temperature,
        weatherDescription: weatherDescription,
      );
    } else {
      throw Exception('Failed to fetch weather data');
    }
  }
}
