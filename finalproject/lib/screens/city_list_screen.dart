import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:finalproject/bloc/city_bloc.dart';
import 'package:finalproject/models/city.dart';

class CityListScreen extends StatefulWidget {
  @override
  _CityListScreenState createState() => _CityListScreenState();
}

class _CityListScreenState extends State<CityListScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<CityBloc>(context).add(FetchCities());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('City List'),
      ),
      body: BlocBuilder<CityBloc, CityState>(
        builder: (context, state) {
          if (state is CityLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is CityLoaded) {
            final List<City> cities = state.weatherDataList;
            return ListView.builder(
              itemCount: cities.length,
              itemBuilder: (context, index) {
                final City city = cities[index];
                return ListTile(
                  title: Text(city.name),
                  subtitle: Text(
                    '${city.temperature.toStringAsFixed(1)}°C - ${city.weatherDescription}',
                  ),
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      '/weather-detail',
                      arguments: city,
                    );
                  },
                );
              },
            );
          } else if (state is CityError) {
            return Center(
              child: Text(state.errorMessage),
            );
          }
          return Container();
        },
      ),
    );
  }
}