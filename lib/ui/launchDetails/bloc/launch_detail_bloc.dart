import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:spacex_app/data/local/app_preferences.dart';
import 'package:spacex_app/res/app_strings.dart';
import 'package:spacex_app/ui/launchList/model/launch_model.dart';
import 'package:spacex_app/ui/launchDetails/repository/launch_detail_repository.dart';
import 'package:spacex_app/ui/launchDetails/model/launch_detail_model.dart';

part 'launch_detail_event.dart';

part 'launch_detail_state.dart';

class LaunchDetailBloc extends Bloc<LaunchDetailEvent, LaunchDetailState> {
  final AppPreferences preferences;
  final LaunchDetailRepository repository;

  LaunchDetailBloc({
    @required this.repository,
    @required this.preferences,
  }) : super(LaunchDetailInitial());

  void getLaunchDetail(String id) {
    add(GetLaunchDetailEvent(id));
  }

  @override
  Stream<LaunchDetailState> mapEventToState(
      LaunchDetailEvent event,
  ) async* {
    if (event is LaunchDetailStarted) {
      yield LaunchDetailInitial();
    } else if (event is GetLaunchDetailEvent) {
      yield* _getLaunchDetailFromServer(event);
    }
  }

  Stream<LaunchDetailState> _getLaunchDetailFromServer(
      GetLaunchDetailEvent event) async* {
    yield LaunchDetailLoading();
    try {
      final result = await repository.getLaunchDetailFromServer(event.id);
      if (result.response.statusCode == 200) {
        yield LaunchDetailLoaded(result.data);
      } else {
        yield LaunchDetailFailed(AppStrings.couldNotLoadLaunch);
      }
    } catch (error, stacktrace) {
      print(error.toString());
      yield LaunchDetailFailed(
          (error != null) ? error.toString() : AppStrings.couldNotLoadLaunch);
    }
  }
}
