
part of 'launch_list_bloc.dart';

abstract class LaunchListEvent extends Equatable {

  LaunchListEvent([List props = const []]) : super();

  @override
  List<Object> get props => throw UnimplementedError();
}

class LaunchListStarted extends LaunchListEvent {
  @override
  String toString() => 'LaunchListStarted';

}

class GetLaunchListEvent extends LaunchListEvent {
  @override
  String toString() => 'GetLaunchListEvent';

}
