// ignore_for_file: must_be_immutable

part of 'details_two_container_bloc.dart';

/// Represents the state of DetailsTwoContainer in the application.
class DetailsTwoContainerState extends Equatable {
  DetailsTwoContainerState({this.detailsTwoContainerModelObj});

  DetailsTwoContainerModel? detailsTwoContainerModelObj;

  @override
  List<Object?> get props => [
        detailsTwoContainerModelObj,
      ];
  DetailsTwoContainerState copyWith(
      {DetailsTwoContainerModel? detailsTwoContainerModelObj}) {
    return DetailsTwoContainerState(
      detailsTwoContainerModelObj:
          detailsTwoContainerModelObj ?? this.detailsTwoContainerModelObj,
    );
  }
}
