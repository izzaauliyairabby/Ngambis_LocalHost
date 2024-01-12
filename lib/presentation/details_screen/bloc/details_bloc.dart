import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/framethree_item_model.dart';
import '../models/userprofile_item_model.dart';
import 'package:izza_auliyai_rabby_s_application3/presentation/details_screen/models/details_model.dart';
part 'details_event.dart';
part 'details_state.dart';

/// A bloc that manages the state of a Details according to the event that is dispatched to it.
class DetailsBloc extends Bloc<DetailsEvent, DetailsState> {
  DetailsBloc(DetailsState initialState) : super(initialState) {
    on<DetailsInitialEvent>(_onInitialize);
  }

  List<FramethreeItemModel> fillFramethreeItemList() {
    return [
      FramethreeItemModel(frame: "Discover"),
      FramethreeItemModel(frame: "Saved"),
      FramethreeItemModel(frame: "Applied"),
      FramethreeItemModel(frame: "Closed"),
      FramethreeItemModel(frame: "Discarded")
    ];
  }

  List<UserprofileItemModel> fillUserprofileItemList() {
    return [
      UserprofileItemModel(
          voiceOverArtist: "Voice Over Artist",
          spotify: "Spotify",
          remoteText: "Remote",
          freshersText: "Freshers",
          fulltimeText: "Fulltime")
    ];
  }

  _onInitialize(
    DetailsInitialEvent event,
    Emitter<DetailsState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        detailsModelObj: state.detailsModelObj?.copyWith(
      framethreeItemList: fillFramethreeItemList(),
      userprofileItemList: fillUserprofileItemList(),
    )));
  }
}
