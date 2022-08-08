import 'package:flutter_clean_architecture/domain/entities/weather.dart';
import 'package:flutter_clean_architecture/domain/usecases/get_current_weather.dart';
import 'package:flutter_test/flutter_test.dart';

import '../helpers/test_helper.mocks.dart';

void main() {
  late MockWeatherRepository mockWeatherRepository;
  late GetCurrentWeather usecase;

  setUp(() {
    mockWeatherRepository = MockWeatherRepository();
    usecase = GetCurrentWeather(mockWeatherRepository);
  });

 const testWeatherDetail = Weather(
    cityName: 'Jakarta',
    main: 'Clouds',
    description: 'few clouds',
    iconCode: '02d',
    temperature: 302.28,
    pressure: 1009,
    humidity: 70,
  );

  const tCityName = 'Jakarta';
}
