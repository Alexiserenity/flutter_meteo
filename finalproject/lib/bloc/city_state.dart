part of 'city_bloc.dart';

@immutable
abstract class CityState {}

class CityInitial extends CityState {}

class CityLoading extends CityState {}

class CityLoaded extends CityState {
  final WeatherData weatherData;

  CityLoaded({required this.weatherData});
}

class CityError extends CityState {
  final String errorMessage;

  CityError({required this.errorMessage});
}
