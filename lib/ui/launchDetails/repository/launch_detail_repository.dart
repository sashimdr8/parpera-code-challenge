
import 'package:retrofit/retrofit.dart';
import 'package:spacex_app/data/api/api_services.dart';
import 'package:spacex_app/data/local/app_preferences.dart';
import 'package:spacex_app/ui/launchList/model/launch_model.dart';
import 'package:spacex_app/ui/launchDetails/model/launch_detail_model.dart';

abstract class LaunchDetailRepository {
  Future<HttpResponse<LaunchDetailModel>> getLaunchDetailFromServer(String id);
}

class LaunchDetailRepositoryImpl implements LaunchDetailRepository {
  ApiService _apiService;
  AppPreferences _preferences;

  LaunchDetailRepositoryImpl(this._preferences, this._apiService) {}

  @override
  Future<HttpResponse<LaunchDetailModel>> getLaunchDetailFromServer(String id) async {
    return _apiService.getLaunchDetail(id);
  }

}
