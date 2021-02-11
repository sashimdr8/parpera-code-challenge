import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacex_app/di/dependency_injection.dart';
import 'package:spacex_app/res/app_colors.dart';
import 'package:spacex_app/res/app_sizes.dart';
import 'package:spacex_app/res/app_strings.dart';
import 'package:spacex_app/ui/launchDetails/bloc/launch_detail_bloc.dart';
import 'package:spacex_app/ui/launchList/model/launch_model.dart';
import 'package:spacex_app/utils/app_contracts.dart';
import 'package:spacex_app/utils/view_utils.dart';
import 'package:spacex_app/utils/date_utils.dart';
import 'package:spacex_app/utils/app_utils.dart';
import 'package:spacex_app/ui/launchDetails/model/launch_detail_model.dart';

class LaunchDetailScreen extends StatefulWidget {
  final BuildContext buildContext;
  final String id;
  final String launchName;
  final LaunchModel launchModel;

  const LaunchDetailScreen(
      {Key key,
      @required this.id,
      @required this.launchName,
      @required this.launchModel,
      @required this.buildContext})
      : super(key: key);

  @override
  _LaunchDetailScreenState createState() => _LaunchDetailScreenState();
}

class _LaunchDetailScreenState extends State<LaunchDetailScreen> {
  LaunchDetailBloc _launchDetailBloc;

  @override
  void initState() {
    _launchDetailBloc = locator<LaunchDetailBloc>();
    _launchDetailBloc.getLaunchDetail(widget.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
                title: Center(child: Text(widget.launchName)),
                backgroundColor: AppColors.colorPrimary),
            body: _buildLaunchDetails(widget.launchModel)));
  }

  Widget _buildLaunchDetails(LaunchModel launchModel) {
    return Container(
        padding: EdgeInsets.all(AppSizes.horizontalMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Container(
                  padding: EdgeInsets.only(top: AppSizes.size10),
                  child: Image(
                    image: launchModel.links.patch.large.isEmpty
                        ? AssetImage(AppContracts.PLACE_HOLDER_IMAGE_PATH)
                        : NetworkImage(launchModel.links.patch.large),
                    height: AppSizes.size500,
                  )),
            ),
            Card(
                child: Container(
              alignment: Alignment.bottomLeft,
              child: Padding(
                  padding: EdgeInsets.all(AppSizes.size12),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(launchModel.name,
                            style: TextStyle(
                                fontSize: AppSizes.txtSize20,
                                fontWeight: FontWeight.bold)),
                        Text(
                            launchModel.dateLocal.isNotEmpty
                                ? "LaunchDate : " +
                                    formatDateString(launchModel.dateLocal)
                                : "",
                            style: TextStyle(
                                fontSize: AppSizes.txtSize15,
                                fontWeight: FontWeight.normal)),
                        Text(getStatusOfMission(launchModel),
                            style: TextStyle(
                                fontSize: AppSizes.txtSize15,
                                fontWeight: FontWeight.normal)),
                        Text("Details : " + launchModel.details,
                            style: TextStyle(
                                fontSize: AppSizes.txtSize15,
                                fontWeight: FontWeight.normal))
                      ])),
            ))
          ],
        ));
  }
}
