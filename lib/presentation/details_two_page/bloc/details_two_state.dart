// ignore_for_file: must_be_immutable

part of 'details_two_bloc.dart';

/// Represents the state of DetailsTwo in the application.
class DetailsTwoState extends Equatable {
  DetailsTwoState({
    this.searchController,
    this.detailsTwoModelObj,
  });

  TextEditingController? searchController;

  DetailsTwoModel? detailsTwoModelObj;

  @override
  List<Object?> get props => [
        searchController,
        detailsTwoModelObj,
      ];
  DetailsTwoState copyWith({
    TextEditingController? searchController,
    DetailsTwoModel? detailsTwoModelObj,
  }) {
    return DetailsTwoState(
      searchController: searchController ?? this.searchController,
      detailsTwoModelObj: detailsTwoModelObj ?? this.detailsTwoModelObj,
    );
  }
}
