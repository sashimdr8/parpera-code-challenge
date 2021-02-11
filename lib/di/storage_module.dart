import 'package:get_it/get_it.dart';
import 'package:spacex_app/data/local/app_preferences.dart';

void storageModule(GetIt locator){

  locator.registerSingleton(providePreferences());

}

AppPreferences providePreferences() {
  return appPreferences;
}