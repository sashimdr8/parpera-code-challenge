import 'package:get_it/get_it.dart';
import 'package:spacex_app/ui/launchList/bloc/launch_list_bloc.dart';
import 'package:spacex_app/ui/launchDetails/bloc/launch_detail_bloc.dart';

void blocModule(GetIt locator) {
  locator.registerLazySingleton<LaunchListBloc>(
      () => LaunchListBloc(preferences: locator(), repository: locator()));

  locator.registerLazySingleton<LaunchDetailBloc>(
      () => LaunchDetailBloc(preferences: locator(), repository: locator()));
}
