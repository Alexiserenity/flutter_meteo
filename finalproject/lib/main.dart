import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:finalproject/bloc/city_bloc.dart';
import 'package:finalproject/screens/city_screen.dart';
import 'package:finalproject/screens/city_list_screen.dart';
import 'package:finalproject/screens/weather_detail_screen.dart';

import 'core/app_export.dart';

void main() {
  runApp(WeatherApp());
}

class WeatherApp extends StatelessWidget {
  final CityBloc cityBloc = CityBloc();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CityBloc>(
      create: (BuildContext context) => cityBloc,
      child: MaterialApp(
        title: 'Weather App',
        initialRoute: CityScreen.routeName,
        routes: {
          CityScreen.routeName: (context) => CityScreen(),
          CityListScreen.routeName: (context) => CityListScreen(),
          WeatherDetailScreen.routeName: (context) => WeatherDetailScreen(),
        },
      ),
    );
  }
}
