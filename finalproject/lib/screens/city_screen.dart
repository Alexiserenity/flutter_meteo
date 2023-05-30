import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:finalproject/bloc/city_bloc.dart';
import 'package:finalproject/screens/city_list_screen.dart';

class CityScreen extends StatelessWidget {
  static const routeName = '/';

  final TextEditingController _cityController = TextEditingController();

  void _fetchWeather(BuildContext context) {
    final String cityName = _cityController.text.trim();
    if (cityName.isNotEmpty) {
      BlocProvider.of<CityBloc>(context).add(FetchWeatherEvent(cityName: cityName));
      Navigator.pushNamed(context, CityListScreen.routeName);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather App'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _cityController,
                decoration: InputDecoration(
                  labelText: 'Enter a city',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => _fetchWeather(context),
                child: Text('Get Weather'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
