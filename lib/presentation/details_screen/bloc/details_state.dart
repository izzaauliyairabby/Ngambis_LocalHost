// ignore_for_file: must_be_immutable

part of 'details_bloc.dart';

/// Represents the state of Details in the application.
class DetailsState extends Equatable {
  DetailsState({
    this.searchController,
    this.detailsModelObj,
  });

  TextEditingController? searchController;

  DetailsModel? detailsModelObj;

  @override
  List<Object?> get props => [
        searchController,
        detailsModelObj,
      ];
  DetailsState copyWith({
    TextEditingController? searchController,
    DetailsModel? detailsModelObj,
  }) {
    return DetailsState(
      searchController: searchController ?? this.searchController,
      detailsModelObj: detailsModelObj ?? this.detailsModelObj,
    );
  }
}
