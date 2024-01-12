// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class is used in the [framesixteen_item_widget] screen.
class FramesixteenItemModel extends Equatable {
  FramesixteenItemModel({
    this.locationonwhitedpOne,
    this.isSelected,
  }) {
    locationonwhitedpOne = locationonwhitedpOne ?? "Remote";
    isSelected = isSelected ?? false;
  }

  String? locationonwhitedpOne;

  bool? isSelected;

  FramesixteenItemModel copyWith({
    String? locationonwhitedpOne,
    bool? isSelected,
  }) {
    return FramesixteenItemModel(
      locationonwhitedpOne: locationonwhitedpOne ?? this.locationonwhitedpOne,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [locationonwhitedpOne, isSelected];
}
