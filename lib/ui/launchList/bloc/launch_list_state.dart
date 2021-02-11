part of 'launch_list_bloc.dart';

abstract class LaunchListState extends Equatable {
  LaunchListState([List props = const []]);

  @override
  List<Object> get props => props;
}

class LaunchListInitial extends LaunchListState {
  @override
  String toString() => 'LaunchListInitial';
}

class LaunchListLoading extends LaunchListState {
  @override
  String toString() => 'LaunchListLoading';
}

class LaunchListLoaded extends LaunchListState {
  final List<LaunchModel> launchList;

  LaunchListLoaded(this.launchList);

  @override
  String toString() => 'LaunchListLoaded';
}

class LaunchListFailed extends LaunchListState {
  final String errorMessage;

  LaunchListFailed(this.errorMessage);

  @override
  String toString() => 'LaunchListFailed';
}
