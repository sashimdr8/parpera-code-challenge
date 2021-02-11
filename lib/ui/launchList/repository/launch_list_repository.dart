
import 'package:retrofit/retrofit.dart';
import 'package:spacex_app/data/api/api_services.dart';
import 'package:spacex_app/data/local/app_preferences.dart';
import 'package:spacex_app/ui/launchList/model/launch_model.dart';

abstract class LaunchListRepository {
  Future<HttpResponse<List<LaunchModel>>> getLaunchListFromServer();
}

class LaunchListRepositoryImpl implements LaunchListRepository {
  ApiService _apiService;
  AppPreferences _preferences;

  LaunchListRepositoryImpl(this._preferences, this._apiService) {}

  @override
  Future<HttpResponse<List<LaunchModel>>> getLaunchListFromServer() async {
   return _apiService.getLaunchList();
  }

}
