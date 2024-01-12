// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'listframethree_item_model.dart';
import 'listuserprofile_item_model.dart';

/// This class defines the variables used in the [details_two_page],
/// and is typically used to hold data that is passed between different parts of the application.
class DetailsTwoModel extends Equatable {
  DetailsTwoModel({
    this.listframethreeItemList = const [],
    this.listuserprofileItemList = const [],
  }) {}

  List<ListframethreeItemModel> listframethreeItemList;

  List<ListuserprofileItemModel> listuserprofileItemList;

  DetailsTwoModel copyWith({
    List<ListframethreeItemModel>? listframethreeItemList,
    List<ListuserprofileItemModel>? listuserprofileItemList,
  }) {
    return DetailsTwoModel(
      listframethreeItemList:
          listframethreeItemList ?? this.listframethreeItemList,
      listuserprofileItemList:
          listuserprofileItemList ?? this.listuserprofileItemList,
    );
  }

  @override
  List<Object?> get props => [listframethreeItemList, listuserprofileItemList];
}
