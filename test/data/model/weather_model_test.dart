import 'dart:convert';

import 'package:flutter_clean_architecture/domain/entities/weather.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../helpers/json_reader.dart';
import 'weather_model.dart';

void main() {
  const tWeatherModel = WeatherModel(
    cityName: 'Jakarta',
    main: 'Clouds',
    description: 'few clouds',
    iconCode: '02d',
    temperature: 302.28,
    pressure: 1009,
    humidity: 70,
  );

  const tWeather = Weather(
    cityName: 'Jakarta',
    main: 'Clouds',
    description: 'few clouds',
    iconCode: '02d',
    temperature: 302.28,
    pressure: 1009,
    humidity: 70,
  );

  group('to entiry', () {
    test('should be a subclass of weather entity', () async {
      final result = tWeatherModel.toEntity();
      expect(result, tWeather);
    });
  });

  group('fro json', () {
    test("should return a valid model from json", () async {
      final Map<String, dynamic> jsonMap = json.decode(
        readJson('helpers/dummy_data/dummy_weather_response.json'),
      );

      // act
      final result = WeatherModel.fromJson(jsonMap);

      // assert
      expect(result, equals(tWeatherModel));
    });
  });

  group('to json', () {
    test(
      'should return a json map containing proper data',
      () async {
        // act
        final result = tWeatherModel.toJson();

        // assert
        final expectedJsonMap = {
          'weather': [
            {
              'main': 'Clouds',
              'description': 'few clouds',
              'icon': '02d',
            }
          ],
          'main': {
            'temp': 302.28,
            'pressure': 1009,
            'humidity': 70,
          },
          'name': 'Jakarta',
        };
        expect(result, equals(expectedJsonMap));
      },
    );
  });
}
