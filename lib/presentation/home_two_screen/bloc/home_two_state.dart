// ignore_for_file: must_be_immutable

part of 'home_two_bloc.dart';

/// Represents the state of HomeTwo in the application.
class HomeTwoState extends Equatable {
  HomeTwoState({this.homeTwoModelObj});

  HomeTwoModel? homeTwoModelObj;

  @override
  List<Object?> get props => [
        homeTwoModelObj,
      ];
  HomeTwoState copyWith({HomeTwoModel? homeTwoModelObj}) {
    return HomeTwoState(
      homeTwoModelObj: homeTwoModelObj ?? this.homeTwoModelObj,
    );
  }
}
