part of 'launch_detail_bloc.dart';

abstract class LaunchDetailEvent extends Equatable {

  LaunchDetailEvent([List props = const []]) : super();

  @override
  List<Object> get props => throw UnimplementedError();
}

class LaunchDetailStarted extends LaunchDetailEvent {
  @override
  String toString() => 'LaunchDetailStarted';

}

class GetLaunchDetailEvent extends LaunchDetailEvent {
  final String id;

  GetLaunchDetailEvent(this.id);

  @override
  String toString() => 'GetLaunchDetailEvent';

}
