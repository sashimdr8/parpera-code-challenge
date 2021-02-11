import 'package:get_it/get_it.dart';
import 'package:spacex_app/di/app_module.dart';
import 'package:spacex_app/di/bloc_module.dart';
import 'package:spacex_app/di/repository_module.dart';
import 'package:spacex_app/di/storage_module.dart';

GetIt locator = GetIt.instance;

Future<void> init() async {

  appModule(locator);

  blocModule(locator);

  repositoryModule(locator);

  storageModule(locator);
}
