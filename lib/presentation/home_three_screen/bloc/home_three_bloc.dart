import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofilelist1_item_model.dart';
import 'package:izza_auliyai_rabby_s_application3/presentation/home_three_screen/models/home_three_model.dart';
part 'home_three_event.dart';
part 'home_three_state.dart';

/// A bloc that manages the state of a HomeThree according to the event that is dispatched to it.
class HomeThreeBloc extends Bloc<HomeThreeEvent, HomeThreeState> {
  HomeThreeBloc(HomeThreeState initialState) : super(initialState) {
    on<HomeThreeInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<HomeThreeState> emit,
  ) {
    emit(state.copyWith(
      radioGroup: event.value,
    ));
  }

  List<Userprofilelist1ItemModel> fillUserprofilelist1ItemList() {
    return [
      Userprofilelist1ItemModel(
          userImage: ImageConstant.imgEllipse48,
          userName: "Andy Robertson",
          userDescription: "Oh yes, please send your CV/Res...",
          timeAgo: "5m ago",
          newMessageCount: "2"),
      Userprofilelist1ItemModel(
          userImage: ImageConstant.imgEllipse4850x52,
          userName: "Giorgio Chiellini",
          userDescription: "Hello sir, Good Morning"),
      Userprofilelist1ItemModel(
          userImage: ImageConstant.imgEllipse481,
          userName: "Alex Morgan",
          userDescription: "I saw the UI/UX Designer vac..."),
      Userprofilelist1ItemModel(
          userImage: ImageConstant.imgEllipse482,
          userName: "Megan Rapinoe",
          userDescription: "I saw the UI/UX Designer vac..."),
      Userprofilelist1ItemModel(
          userImage: ImageConstant.imgEllipse4850x50,
          userName: "Alessandro Bastoni",
          userDescription: "I saw the UI/UX Designer vac..."),
      Userprofilelist1ItemModel(
          userImage: ImageConstant.imgEllipse483,
          userName: "Megan Rapinoe",
          userDescription: "I saw the UI/UX Designer vac..."),
      Userprofilelist1ItemModel(
          userImage: ImageConstant.imgEllipse484,
          userName: "Alessandro Bastoni",
          userDescription: "I saw the UI/UX Designer vac..."),
      Userprofilelist1ItemModel(
          userName: "Ilkay Gundogan",
          userDescription: "I saw the UI/UX Designer vac..."),
      Userprofilelist1ItemModel(
          newMessageCount: "I saw the UI/UX Designer vac...")
    ];
  }

  _onInitialize(
    HomeThreeInitialEvent event,
    Emitter<HomeThreeState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
      radioGroup: "",
    ));
    emit(state.copyWith(
        homeThreeModelObj: state.homeThreeModelObj?.copyWith(
      userprofilelist1ItemList: fillUserprofilelist1ItemList(),
    )));
  }
}
