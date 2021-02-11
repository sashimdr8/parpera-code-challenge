import 'package:flutter/material.dart';
import 'package:spacex_app/data/local/app_preferences.dart';
import 'package:spacex_app/res/app_strings.dart';
import 'package:spacex_app/ui/launchList/view/launch_list_screen.dart';
import 'package:spacex_app/utils/view_utils.dart';
import 'di/dependency_injection.dart' as di;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: awaitPreAppStartupDependencies(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return MaterialApp(
                debugShowCheckedModeBanner: false,
                title: AppStrings.appName,
                home: LaunchListScreen());
          }
          return Scaffold(
            appBar: AppBar(title: Center(child: Text(AppStrings.appName))));
        });
  }

  Future<void> awaitPreAppStartupDependencies() async {
    await appPreferences.init();
    await di.init();
  }
}
