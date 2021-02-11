import 'package:spacex_app/ui/launchList/model/launch_model.dart';
import 'package:spacex_app/ui/launchDetails/model/launch_detail_model.dart';

String getStatusOfMission(LaunchModel launchModel) {
  String status = "Status : ";
  if (launchModel.success)
    status += "Success";
  else if (launchModel.upcoming) {
    status += "Upcoming";
  } else {
    status += "Failed";
  }
  return status;
}

String getStatus(LaunchDetailModel launchModel) {
  String status = "Status : ";
  if (launchModel.success)
    status += "Success";
  else if (launchModel.upcoming) {
    status += "Upcoming";
  } else {
    status += "Failed";
  }
  return status;
}
