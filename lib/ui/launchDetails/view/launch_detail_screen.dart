import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacex_app/di/dependency_injection.dart';
import 'package:spacex_app/res/app_colors.dart';
import 'package:spacex_app/res/app_strings.dart';
import 'package:spacex_app/ui/launchDetails/bloc/launch_detail_bloc.dart';

class LaunchDetailScreen extends StatefulWidget {
  final BuildContext buildContext;
  final String id;
  final String launchName;

  const LaunchDetailScreen(
      {Key key, @required this.id, @required this.launchName, @required this.buildContext})
      : super(key: key);

  @override
  _LaunchDetailScreenState createState() => _LaunchDetailScreenState();
}

class _LaunchDetailScreenState extends State<LaunchDetailScreen> {

  LaunchDetailBloc _launchDetailBloc;

  @override
  void initState() {
    _launchDetailBloc = locator<LaunchDetailBloc>();
    _launchDetailBloc.getLaunchList(widget.id);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
                title: Center(child: Text(widget.launchName)),
                backgroundColor: AppColors.colorPrimary),
            body: BlocProvider<LaunchDetailBloc>(
                create: (BuildContext providerContext) => _launchDetailBloc,
                child: BlocBuilder<LaunchDetailBloc, LaunchDetailState>(
                    builder: (context, state) {}))));
  }
}
