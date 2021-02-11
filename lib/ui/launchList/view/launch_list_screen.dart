import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacex_app/di/dependency_injection.dart';
import 'package:spacex_app/res/app_sizes.dart';
import 'package:spacex_app/res/app_strings.dart';
import 'package:spacex_app/ui/launchList/bloc/launch_list_bloc.dart';
import 'package:spacex_app/ui/launchList/model/launch_model.dart';
import 'package:spacex_app/utils/view_utils.dart';
import 'package:spacex_app/utils/app_contracts.dart';
import 'package:spacex_app/res/app_colors.dart';
import 'package:spacex_app/utils/date_utils.dart';
import 'package:spacex_app/utils/app_utils.dart';
import 'package:spacex_app/ui/launchDetails/view/launch_detail_screen.dart';

class LaunchListScreen extends StatefulWidget {
  @override
  _LaunchListScreenState createState() => _LaunchListScreenState();
}

class _LaunchListScreenState extends State<LaunchListScreen> {
  LaunchListBloc _launchListBloc;

  @override
  void initState() {
    _launchListBloc = locator<LaunchListBloc>();
    _launchListBloc.getLaunchList();
    super.initState();
  }

  @override
  Widget build(BuildContext buildContext) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
                title: Center(child: Text(AppStrings.spaceXLaunches)),
                backgroundColor: AppColors.colorPrimary),
            body: BlocProvider<LaunchListBloc>(
                create: (BuildContext providerContext) => _launchListBloc,
                child: BlocBuilder<LaunchListBloc, LaunchListState>(
                    builder: (context, state) {
                  if (state is LaunchListLoading) {
                    return showLoading();
                  } else if (state is LaunchListLoaded) {
                    return _buildLaunchList(state);
                  } else if (state is LaunchListFailed) {
                    SchedulerBinding.instance.addPostFrameCallback((_) {
                      showAlertDialog(context, state.errorMessage);
                    });
                  }
                  return Container();
                }))));
  }

  /// builds Launches ListView
  Widget _buildLaunchList(LaunchListLoaded state) {
    return Container(
        padding: EdgeInsets.all(AppSizes.horizontalMargin),
        child: new ListView.builder(
            itemCount: state.launchList.length,
            physics: const ClampingScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext context, int index) {
              return _buildSingleLaunchItem(state.launchList[index]);
            }));
  }

  /// builds Launches list item
  Widget _buildSingleLaunchItem(LaunchModel launchModel) {
    return InkWell(
        onTap: () {
          Navigator.push(
              context,
              new MaterialPageRoute(
                  builder: (context) => new LaunchDetailScreen(
                      id: launchModel.id,
                      launchName: launchModel.name,
                      launchModel: launchModel,
                      buildContext: context)));
        },
        child: Container(
          margin: EdgeInsets.fromLTRB(0, 0, AppSizes.size10, AppSizes.size10),
          color: AppColors.imageBackground,
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: AppSizes.size10),
                child: Image(
                  image: launchModel.links.patch.small.isEmpty
                      ? AssetImage(AppContracts.PLACE_HOLDER_IMAGE_PATH)
                      : NetworkImage(launchModel.links.patch.small),
                  height: AppSizes.size120,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                alignment: Alignment.bottomLeft,
                child: Padding(
                    padding: EdgeInsets.all(AppSizes.size12),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
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
                                  fontWeight: FontWeight.normal))
                        ])),
              )
            ],
          ),
        ));
  }


}
