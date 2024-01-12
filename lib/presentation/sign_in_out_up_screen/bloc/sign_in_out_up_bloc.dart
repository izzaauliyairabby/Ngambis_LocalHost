import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:izza_auliyai_rabby_s_application3/presentation/sign_in_out_up_screen/models/sign_in_out_up_model.dart';
part 'sign_in_out_up_event.dart';
part 'sign_in_out_up_state.dart';

/// A bloc that manages the state of a SignInOutUp according to the event that is dispatched to it.
class SignInOutUpBloc extends Bloc<SignInOutUpEvent, SignInOutUpState> {
  SignInOutUpBloc(SignInOutUpState initialState) : super(initialState) {
    on<SignInOutUpInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SignInOutUpInitialEvent event,
    Emitter<SignInOutUpState> emit,
  ) async {
    emit(state.copyWith(
      emailEditTextController: TextEditingController(),
      passwordEditTextController: TextEditingController(),
    ));
  }
}
