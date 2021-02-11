import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spacex_app/res/app_sizes.dart';
import 'package:spacex_app/res/app_strings.dart';

class LaunchListScreen extends StatefulWidget {
  @override
  _LaunchListScreenState createState() => _LaunchListScreenState();
}

class _LaunchListScreenState extends State<LaunchListScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar:
                AppBar(title: Center(child: Text(AppStrings.spaceXLaunches))),
            body: Container(
                padding: EdgeInsets.all(AppSizes.horizontalMargin),
                child: Text("to-do"))));
  }
}
