import 'package:dio/dio.dart';
import 'package:retrofit/dio.dart';
import 'package:retrofit/http.dart';
import 'package:spacex_app/ui/launchList/model/launch_model.dart';
import 'package:spacex_app/ui/launchDetails/model/launch_detail_model.dart';
import 'api_end_points.dart';

part 'api_services.g.dart';

@RestApi(baseUrl: ApiEndPoints.BASE_URL)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET(ApiEndPoints.launchList)
  Future<HttpResponse<List<LaunchModel>>> getLaunchList();

  @GET(ApiEndPoints.launchList)
  Future<HttpResponse<LaunchDetailModel>> getLaunchDetail(
      @Query("id") String id);
}
