import 'package:get_it/get_it.dart';
import 'package:spacex_app/data/api/api_services.dart';
import 'package:spacex_app/data/local/app_preferences.dart';
import 'package:spacex_app/ui/launchList/repository/launch_list_repository.dart';
import 'package:spacex_app/ui/launchDetails/repository/launch_detail_repository.dart';

void repositoryModule(GetIt locator) {
  // Repository
  locator.registerLazySingleton<LaunchListRepository>(() =>
      provideLaunchListRepository(
          locator<AppPreferences>(), locator<ApiService>()));

  locator.registerLazySingleton<LaunchDetailRepository>(() =>
      provideLaunchDetailRepository(
          locator<AppPreferences>(), locator<ApiService>()));
}

LaunchListRepository provideLaunchListRepository(
    AppPreferences preferences, ApiService apiService) {
  return LaunchListRepositoryImpl(preferences, apiService);
}

LaunchDetailRepository provideLaunchDetailRepository(
    AppPreferences preferences, ApiService apiService) {
  return LaunchDetailRepositoryImpl(preferences, apiService);
}
