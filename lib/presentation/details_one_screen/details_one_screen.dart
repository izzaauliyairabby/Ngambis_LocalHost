import '../details_one_screen/widgets/framesixteen_item_widget.dart';
import '../details_one_screen/widgets/userprofilelist_item_widget.dart';
import 'bloc/details_one_bloc.dart';
import 'models/details_one_model.dart';
import 'models/framesixteen_item_model.dart';
import 'models/userprofilelist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:izza_auliyai_rabby_s_application3/core/app_export.dart';
import 'package:izza_auliyai_rabby_s_application3/widgets/custom_elevated_button.dart';

class DetailsOneScreen extends StatelessWidget {
  const DetailsOneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<DetailsOneBloc>(
        create: (context) => DetailsOneBloc(
            DetailsOneState(detailsOneModelObj: DetailsOneModel()))
          ..add(DetailsOneInitialEvent()),
        child: DetailsOneScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 70.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Column(children: [
                    _buildJobDetailsRow(context),
                    SizedBox(height: 16.v),
                    SizedBox(
                        height: 938.v,
                        width: double.maxFinite,
                        child:
                            Stack(alignment: Alignment.bottomCenter, children: [
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 24.h),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        _buildFrameTwentyTwoStack(context),
                                        SizedBox(height: 16.v),
                                        _buildUserProfileList(context)
                                      ]))),
                          _buildFrameThreeRow(context)
                        ])),
                    SizedBox(height: 16.v),
                    _buildFrameTwentyFiveColumn(context)
                  ])))
                ]))));
  }

  /// Section Widget
  Widget _buildJobDetailsRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 2.v),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgArrowleftPrimary,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.symmetric(vertical: 1.v),
                    onTap: () {
                      onTapImgArrowLeft(context);
                    }),
                Padding(
                    padding: EdgeInsets.only(left: 12.h),
                    child: Text("lbl_job_details".tr,
                        style: CustomTextStyles.titleMediumMedium))
              ])),
          CustomImageView(
              imagePath: ImageConstant.imgEllipse121,
              height: 32.adaptSize,
              width: 32.adaptSize,
              radius: BorderRadius.circular(16.h))
        ]));
  }

  /// Section Widget
  Widget _buildFrameTwentyTwoStack(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.all(0),
        color: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.roundedBorder22),
        child: Container(
            height: 180.v,
            width: 382.h,
            decoration: AppDecoration.fillPrimary
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder22),
            child: Stack(alignment: Alignment.centerLeft, children: [
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                      height: 57.v,
                      width: 382.h,
                      decoration: BoxDecoration(
                          color: theme.colorScheme.primary,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(25.h),
                              bottomRight: Radius.circular(21.h))))),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 16.h, right: 57.h),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("msg_graphic_designer".tr,
                                style: CustomTextStyles.titleMediumBlack900),
                            SizedBox(height: 1.v),
                            Text("lbl_sarah_julaiha".tr,
                                style:
                                    CustomTextStyles.bodySmallPoppinsBlack900),
                            SizedBox(height: 15.v),
                            BlocSelector<DetailsOneBloc, DetailsOneState,
                                    DetailsOneModel?>(
                                selector: (state) => state.detailsOneModelObj,
                                builder: (context, detailsOneModelObj) {
                                  return Wrap(
                                      runSpacing: 8.v,
                                      spacing: 8.h,
                                      children: List<Widget>.generate(
                                          detailsOneModelObj
                                                  ?.framesixteenItemList
                                                  .length ??
                                              0, (index) {
                                        FramesixteenItemModel model =
                                            detailsOneModelObj
                                                        ?.framesixteenItemList[
                                                    index] ??
                                                FramesixteenItemModel();
                                        return FramesixteenItemWidget(model,
                                            onSelectedChipView: (value) {
                                          context.read<DetailsOneBloc>().add(
                                              UpdateChipViewEvent(
                                                  index: index,
                                                  isSelected: value));
                                        });
                                      }));
                                }),
                            SizedBox(height: 34.v),
                            Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                    padding: EdgeInsets.only(right: 68.h),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgHistorywhite24dp1,
                                              height: 16.adaptSize,
                                              width: 16.adaptSize,
                                              margin:
                                                  EdgeInsets.only(bottom: 2.v)),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 4.h),
                                              child: Text(
                                                  "msg_posted_2_days_ago".tr,
                                                  style: CustomTextStyles
                                                      .labelLarge12))
                                        ])))
                          ])))
            ])));
  }

  /// Section Widget
  Widget _buildUserProfileList(BuildContext context) {
    return BlocSelector<DetailsOneBloc, DetailsOneState, DetailsOneModel?>(
        selector: (state) => state.detailsOneModelObj,
        builder: (context, detailsOneModelObj) {
          return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(height: 16.v);
              },
              itemCount:
                  detailsOneModelObj?.userprofilelistItemList.length ?? 0,
              itemBuilder: (context, index) {
                UserprofilelistItemModel model =
                    detailsOneModelObj?.userprofilelistItemList[index] ??
                        UserprofilelistItemModel();
                return UserprofilelistItemWidget(model);
              });
        });
  }

  /// Section Widget
  Widget _buildFrameThreeRow(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(top: 469.v, bottom: 120.v),
            padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 33.v),
            decoration: AppDecoration.gradientGrayToGray,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomElevatedButton(
                      width: 123.h,
                      text: "lbl_save".tr,
                      margin: EdgeInsets.only(top: 235.v),
                      buttonStyle: CustomButtonStyles.fillPrimaryTL24,
                      buttonTextStyle:
                          CustomTextStyles.titleMediumBlack900Medium),
                  CustomElevatedButton(
                      width: 251.h,
                      text: "lbl_apply_now".tr,
                      margin: EdgeInsets.only(top: 235.v),
                      rightIcon: Container(
                          margin: EdgeInsets.only(left: 10.h),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgArrowleftPrimary,
                              height: 24.adaptSize,
                              width: 24.adaptSize)),
                      buttonStyle: CustomButtonStyles.fillDeepPurpleA)
                ])));
  }

  /// Section Widget
  Widget _buildFrameTwentyFiveColumn(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 24.h),
        padding: EdgeInsets.all(20.h),
        decoration: AppDecoration.fillBluegray30001
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder22),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("lbl_benefits".tr,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.titleMedium),
              SizedBox(height: 8.v),
              SizedBox(
                  width: 342.h,
                  child: Text("msg_lorem_ipsum_dolor".tr,
                      maxLines: null,
                      overflow: TextOverflow.ellipsis,
                      style:
                          theme.textTheme.bodyMedium!.copyWith(height: 1.40))),
              SizedBox(height: 8.v),
              SizedBox(
                  width: 342.h,
                  child: Text("msg_lorem_ipsum_dolor".tr,
                      maxLines: null,
                      overflow: TextOverflow.ellipsis,
                      style:
                          theme.textTheme.bodyMedium!.copyWith(height: 1.40)))
            ]));
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
