part of 'launch_detail_bloc.dart';

abstract class LaunchDetailState extends Equatable {
  LaunchDetailState([List props = const []]);

  @override
  List<Object> get props => props;
}

class LaunchDetailInitial extends LaunchDetailState {
  @override
  String toString() => 'LaunchDetailInitial';
}

class LaunchDetailLoading extends LaunchDetailState {
  @override
  String toString() => 'LaunchDetailLoading';
}

class LaunchDetailLoaded extends LaunchDetailState {
  final LaunchModel launchModel;

  LaunchDetailLoaded(this.launchModel);

  @override
  String toString() => 'LaunchDetailLoaded';
}

class LaunchDetailFailed extends LaunchDetailState {
  final String errorMessage;

  LaunchDetailFailed(this.errorMessage);

  @override
  String toString() => 'LaunchDetailFailed';
}
