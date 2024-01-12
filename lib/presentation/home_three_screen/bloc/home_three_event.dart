// ignore_for_file: must_be_immutable

part of 'home_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomeThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomeThreeEvent extends Equatable {}

/// Event that is dispatched when the HomeThree widget is first created.
class HomeThreeInitialEvent extends HomeThreeEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends HomeThreeEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
