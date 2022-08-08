import 'package:flutter_clean_architecture/domain/repositories/weather_repository.dart';
import 'package:mockito/annotations.dart';
import 'package:http/http.dart' as http;

import '../data/datasources/remote_data_source.dart';

@GenerateMocks(
  [
    WeatherRepository,
    RemoteDataSource
  ],
  customMocks: [MockSpec<http.Client>(as: #MockHttpClient)],
)
void main() {}
