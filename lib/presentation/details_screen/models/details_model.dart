// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'framethree_item_model.dart';
import 'userprofile_item_model.dart';

/// This class defines the variables used in the [details_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class DetailsModel extends Equatable {
  DetailsModel({
    this.framethreeItemList = const [],
    this.userprofileItemList = const [],
  }) {}

  List<FramethreeItemModel> framethreeItemList;

  List<UserprofileItemModel> userprofileItemList;

  DetailsModel copyWith({
    List<FramethreeItemModel>? framethreeItemList,
    List<UserprofileItemModel>? userprofileItemList,
  }) {
    return DetailsModel(
      framethreeItemList: framethreeItemList ?? this.framethreeItemList,
      userprofileItemList: userprofileItemList ?? this.userprofileItemList,
    );
  }

  @override
  List<Object?> get props => [framethreeItemList, userprofileItemList];
}
