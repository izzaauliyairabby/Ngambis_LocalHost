import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listframethree_item_model.dart';
import '../models/listuserprofile_item_model.dart';
import 'package:izza_auliyai_rabby_s_application3/presentation/details_two_page/models/details_two_model.dart';
part 'details_two_event.dart';
part 'details_two_state.dart';

/// A bloc that manages the state of a DetailsTwo according to the event that is dispatched to it.
class DetailsTwoBloc extends Bloc<DetailsTwoEvent, DetailsTwoState> {
  DetailsTwoBloc(DetailsTwoState initialState) : super(initialState) {
    on<DetailsTwoInitialEvent>(_onInitialize);
  }

  List<ListframethreeItemModel> fillListframethreeItemList() {
    return [
      ListframethreeItemModel(frame: "Discover"),
      ListframethreeItemModel(frame: "Saved"),
      ListframethreeItemModel(frame: "Applied"),
      ListframethreeItemModel(frame: "Closed"),
      ListframethreeItemModel(frame: "Discarded")
    ];
  }

  List<ListuserprofileItemModel> fillListuserprofileItemList() {
    return [
      ListuserprofileItemModel(
          jobTitle: "Graphic Designer",
          userName: "Sarah Julaeiha",
          remoteText: "Remote",
          freshersText: "Freshers",
          fulltimeText: "Fulltime")
    ];
  }

  _onInitialize(
    DetailsTwoInitialEvent event,
    Emitter<DetailsTwoState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        detailsTwoModelObj: state.detailsTwoModelObj?.copyWith(
      listframethreeItemList: fillListframethreeItemList(),
      listuserprofileItemList: fillListuserprofileItemList(),
    )));
  }
}
