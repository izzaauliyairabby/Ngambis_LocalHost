import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/framesixteen_item_model.dart';
import '../models/userprofilelist_item_model.dart';
import 'package:izza_auliyai_rabby_s_application3/presentation/details_one_screen/models/details_one_model.dart';
part 'details_one_event.dart';
part 'details_one_state.dart';

/// A bloc that manages the state of a DetailsOne according to the event that is dispatched to it.
class DetailsOneBloc extends Bloc<DetailsOneEvent, DetailsOneState> {
  DetailsOneBloc(DetailsOneState initialState) : super(initialState) {
    on<DetailsOneInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _onInitialize(
    DetailsOneInitialEvent event,
    Emitter<DetailsOneState> emit,
  ) async {
    emit(state.copyWith(
        detailsOneModelObj: state.detailsOneModelObj?.copyWith(
            framesixteenItemList: fillFramesixteenItemList(),
            userprofilelistItemList: fillUserprofilelistItemList())));
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<DetailsOneState> emit,
  ) {
    List<FramesixteenItemModel> newList = List<FramesixteenItemModel>.from(
        state.detailsOneModelObj!.framesixteenItemList);
    newList[event.index] =
        newList[event.index].copyWith(isSelected: event.isSelected);
    emit(state.copyWith(
        detailsOneModelObj:
            state.detailsOneModelObj?.copyWith(framesixteenItemList: newList)));
  }

  List<FramesixteenItemModel> fillFramesixteenItemList() {
    return List.generate(3, (index) => FramesixteenItemModel());
  }

  List<UserprofilelistItemModel> fillUserprofilelistItemList() {
    return [
      UserprofilelistItemModel(
          editButton: ImageConstant.imgEditWhite24dp,
          jobDescriptionText: "Job Description",
          uxDesignerText:
              "In a UX Designer job, you'll need both types of skills to develop the next generation of products. You'll partner with Researchers and Designers to define and deliver new features."),
      UserprofilelistItemModel(
          editButton: ImageConstant.imgTaskAltWhite24dp,
          jobDescriptionText: "Skills & Requirements",
          uxDesignerText:
              "3 years experience\nDegree in Computer Science, Psychology, Design or any other related fields.\nProficiency in User Personas, Competitive Analysis, Empathy Maps and Information Architecture."),
      UserprofilelistItemModel(
          editButton: ImageConstant.imgPersonOutlineWhite24dp,
          jobDescriptionText: "Your Role",
          uxDesignerText:
              "As a UX Designer, you will be directly responsible for helping the evolution of enterprise design systems at Google. You will engineer solutions that create shareable web components to be used in enterprise products within the organization. You’ll support multiple different product areas and collaborate with multiple job functions across the globe.")
    ];
  }
}
