import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:izza_auliyai_rabby_s_application3/presentation/home_one_screen/models/home_one_model.dart';
part 'home_one_event.dart';
part 'home_one_state.dart';

/// A bloc that manages the state of a HomeOne according to the event that is dispatched to it.
class HomeOneBloc extends Bloc<HomeOneEvent, HomeOneState> {
  HomeOneBloc(HomeOneState initialState) : super(initialState) {
    on<HomeOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomeOneInitialEvent event,
    Emitter<HomeOneState> emit,
  ) async {}
}
