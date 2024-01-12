// ignore_for_file: must_be_immutable

part of 'sign_in_out_up_bloc.dart';

/// Represents the state of SignInOutUp in the application.
class SignInOutUpState extends Equatable {
  SignInOutUpState({
    this.emailEditTextController,
    this.passwordEditTextController,
    this.signInOutUpModelObj,
  });

  TextEditingController? emailEditTextController;

  TextEditingController? passwordEditTextController;

  SignInOutUpModel? signInOutUpModelObj;

  @override
  List<Object?> get props => [
        emailEditTextController,
        passwordEditTextController,
        signInOutUpModelObj,
      ];
  SignInOutUpState copyWith({
    TextEditingController? emailEditTextController,
    TextEditingController? passwordEditTextController,
    SignInOutUpModel? signInOutUpModelObj,
  }) {
    return SignInOutUpState(
      emailEditTextController:
          emailEditTextController ?? this.emailEditTextController,
      passwordEditTextController:
          passwordEditTextController ?? this.passwordEditTextController,
      signInOutUpModelObj: signInOutUpModelObj ?? this.signInOutUpModelObj,
    );
  }
}
