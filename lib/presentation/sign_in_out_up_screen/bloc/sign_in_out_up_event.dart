// ignore_for_file: must_be_immutable

part of 'sign_in_out_up_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SignInOutUp widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SignInOutUpEvent extends Equatable {}

/// Event that is dispatched when the SignInOutUp widget is first created.
class SignInOutUpInitialEvent extends SignInOutUpEvent {
  @override
  List<Object?> get props => [];
}
