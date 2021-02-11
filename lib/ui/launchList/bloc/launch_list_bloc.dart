import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:spacex_app/data/local/app_preferences.dart';
import 'package:spacex_app/res/app_strings.dart';
import 'package:spacex_app/ui/launchList/model/launch_model.dart';
import 'package:spacex_app/ui/launchList/repository/launch_list_repository.dart';

part 'launch_list_event.dart';

part 'launch_list_state.dart';

class LaunchListBloc extends Bloc<LaunchListEvent, LaunchListState> {
  final AppPreferences preferences;
  final LaunchListRepository repository;

  LaunchListBloc({
    @required this.repository,
    @required this.preferences,
  }) : super(LaunchListInitial());

  void getLaunchList() {
    add(GetLaunchListEvent());
  }

  @override
  Stream<LaunchListState> mapEventToState(
    LaunchListEvent event,
  ) async* {
    if (event is LaunchListStarted) {
      yield LaunchListInitial();
    } else if (event is GetLaunchListEvent) {
      yield* _getLaunchListFromServer(event);
    }
  }

  Stream<LaunchListState> _getLaunchListFromServer(
      GetLaunchListEvent event) async* {
    yield LaunchListLoading();
    try {
      final result = await repository.getLaunchListFromServer();
      if (result.response.statusCode == 200) {
        yield LaunchListLoaded(result.data);
      } else {
        yield LaunchListFailed(AppStrings.couldNotLoadLaunch);
      }
    } catch (error, stacktrace) {
      yield LaunchListFailed(
          (error != null) ? error.toString() : AppStrings.couldNotLoadLaunch);
    }
  }
}
