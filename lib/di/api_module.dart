import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:spacex_app/data/api/api_services.dart';

void apiModule(GetIt locator) {
  locator.registerSingleton<Dio>(provideDio());

  locator.registerSingleton<ApiService>(ApiService(locator<Dio>()));
}

/// Http Library
/// for api
Dio provideDio() {
  Dio dio = Dio();
  dio.interceptors.add(LogInterceptor(requestBody: true, responseBody: true));
  return dio;
}
