part of 'city_bloc.dart';

@immutable
abstract class CityEvent {}

class FetchWeatherEvent extends CityEvent {
  final String cityName;

  FetchWeatherEvent({required this.cityName});
}
