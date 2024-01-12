// ignore_for_file: must_be_immutable

part of 'details_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DetailsTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DetailsTwoEvent extends Equatable {}

/// Event that is dispatched when the DetailsTwo widget is first created.
class DetailsTwoInitialEvent extends DetailsTwoEvent {
  @override
  List<Object?> get props => [];
}
