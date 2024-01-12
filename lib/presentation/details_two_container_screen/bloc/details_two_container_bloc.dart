import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:izza_auliyai_rabby_s_application3/presentation/details_two_container_screen/models/details_two_container_model.dart';
part 'details_two_container_event.dart';
part 'details_two_container_state.dart';

/// A bloc that manages the state of a DetailsTwoContainer according to the event that is dispatched to it.
class DetailsTwoContainerBloc
    extends Bloc<DetailsTwoContainerEvent, DetailsTwoContainerState> {
  DetailsTwoContainerBloc(DetailsTwoContainerState initialState)
      : super(initialState) {
    on<DetailsTwoContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DetailsTwoContainerInitialEvent event,
    Emitter<DetailsTwoContainerState> emit,
  ) async {}
}
