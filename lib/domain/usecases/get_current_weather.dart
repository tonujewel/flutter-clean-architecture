import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture/data/failure.dart';
import 'package:flutter_clean_architecture/domain/entities/weather.dart';
import 'package:flutter_clean_architecture/domain/repositories/weather_repository.dart';

class GetCurrentWeather {
  final WeatherRepository repository;

  GetCurrentWeather(this.repository);

  Future<Either<Failure, Weather>> execute(String cityName) {
    return repository.getCurrentWeather(cityName);
  }
}
