// ignore_for_file: must_be_immutable

part of 'details_two_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DetailsTwoContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DetailsTwoContainerEvent extends Equatable {}

/// Event that is dispatched when the DetailsTwoContainer widget is first created.
class DetailsTwoContainerInitialEvent extends DetailsTwoContainerEvent {
  @override
  List<Object?> get props => [];
}
