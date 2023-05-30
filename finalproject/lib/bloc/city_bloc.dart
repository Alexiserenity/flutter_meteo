import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:finalproject/models/city.dart';
import 'package:finalproject/services/weather_service.dart';
import 'package:meta/meta.dart';

part 'city_event.dart';
part 'city_state.dart';

class CityBloc extends Bloc<CityEvent, CityState> {
  final WeatherService weatherService = WeatherService();

  CityBloc() : super(CityInitial());

  @override
  Stream<CityState> mapEventToState(CityEvent event) async* {
    if (event is FetchWeatherEvent) {
      yield CityLoading();

      try {
        final WeatherData weatherData =
        await weatherService.getWeatherData(event.cityName);
        yield CityLoaded(weatherData: weatherData);
      } catch (e) {
        yield CityError(errorMessage: 'Failed to fetch weather data');
      }
    }
  }
}
