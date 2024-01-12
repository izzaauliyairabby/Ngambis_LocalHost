// ignore_for_file: must_be_immutable

part of 'home_three_bloc.dart';

/// Represents the state of HomeThree in the application.
class HomeThreeState extends Equatable {
  HomeThreeState({
    this.searchController,
    this.radioGroup = "",
    this.homeThreeModelObj,
  });

  TextEditingController? searchController;

  HomeThreeModel? homeThreeModelObj;

  String radioGroup;

  @override
  List<Object?> get props => [
        searchController,
        radioGroup,
        homeThreeModelObj,
      ];
  HomeThreeState copyWith({
    TextEditingController? searchController,
    String? radioGroup,
    HomeThreeModel? homeThreeModelObj,
  }) {
    return HomeThreeState(
      searchController: searchController ?? this.searchController,
      radioGroup: radioGroup ?? this.radioGroup,
      homeThreeModelObj: homeThreeModelObj ?? this.homeThreeModelObj,
    );
  }
}
