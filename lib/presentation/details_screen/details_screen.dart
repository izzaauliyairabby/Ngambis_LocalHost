import '../details_screen/widgets/framethree_item_widget.dart';
import '../details_screen/widgets/userprofile_item_widget.dart';
import 'bloc/details_bloc.dart';
import 'models/details_model.dart';
import 'models/framethree_item_model.dart';
import 'models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:izza_auliyai_rabby_s_application3/core/app_export.dart';
import 'package:izza_auliyai_rabby_s_application3/widgets/custom_elevated_button.dart';
import 'package:izza_auliyai_rabby_s_application3/widgets/custom_icon_button.dart';
import 'package:izza_auliyai_rabby_s_application3/widgets/custom_search_view.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<DetailsBloc>(
      create: (context) => DetailsBloc(DetailsState(
        detailsModelObj: DetailsModel(),
      ))
        ..add(DetailsInitialEvent()),
      child: DetailsScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 89.v),
              Column(
                children: [
                  _buildFrameSeven(context),
                  SizedBox(height: 19.v),
                  _buildFrameThree(context),
                  SizedBox(height: 30.v),
                  _buildFrameTen(context),
                  SizedBox(height: 37.v),
                  SizedBox(
                    height: 759.v,
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        _buildUserProfile(context),
                        _buildTen(context),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameSeven(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 3.v),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "lbl_hello_izza2".tr,
                    style: CustomTextStyles.titleLargeffffffff,
                  ),
                  TextSpan(
                    text: " ",
                  ),
                  TextSpan(
                    text: "lbl".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgEllipse121,
            height: 32.adaptSize,
            width: 32.adaptSize,
            radius: BorderRadius.circular(
              16.h,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameThree(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 45.v,
        child: BlocSelector<DetailsBloc, DetailsState, DetailsModel?>(
          selector: (state) => state.detailsModelObj,
          builder: (context, detailsModelObj) {
            return ListView.separated(
              padding: EdgeInsets.only(left: 27.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  width: 8.h,
                );
              },
              itemCount: detailsModelObj?.framethreeItemList.length ?? 0,
              itemBuilder: (context, index) {
                FramethreeItemModel model =
                    detailsModelObj?.framethreeItemList[index] ??
                        FramethreeItemModel();
                return FramethreeItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameTen(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 23.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child:
                BlocSelector<DetailsBloc, DetailsState, TextEditingController?>(
              selector: (state) => state.searchController,
              builder: (context, searchController) {
                return CustomSearchView(
                  controller: searchController,
                  hintText: "msg_search_for_company".tr,
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: CustomIconButton(
              height: 44.adaptSize,
              width: 44.adaptSize,
              padding: EdgeInsets.all(12.h),
              decoration: IconButtonStyleHelper.fillBlueGray,
              child: CustomImageView(
                imagePath: ImageConstant.imgGroup,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 23.h),
        child: BlocSelector<DetailsBloc, DetailsState, DetailsModel?>(
          selector: (state) => state.detailsModelObj,
          builder: (context, detailsModelObj) {
            return ListView.separated(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 25.v,
                );
              },
              itemCount: detailsModelObj?.userprofileItemList.length ?? 0,
              itemBuilder: (context, index) {
                UserprofileItemModel model =
                    detailsModelObj?.userprofileItemList[index] ??
                        UserprofileItemModel();
                return UserprofileItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSave(BuildContext context) {
    return CustomElevatedButton(
      width: 123.h,
      text: "lbl_save".tr,
      margin: EdgeInsets.only(top: 5.v),
      buttonStyle: CustomButtonStyles.fillPrimaryTL24,
      buttonTextStyle: CustomTextStyles.titleMediumBlack900Medium,
    );
  }

  /// Section Widget
  Widget _buildApplyNow(BuildContext context) {
    return CustomElevatedButton(
      width: 251.h,
      text: "lbl_apply_now".tr,
      margin: EdgeInsets.only(
        left: 8.h,
        top: 5.v,
      ),
      rightIcon: Container(
        margin: EdgeInsets.only(left: 10.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgArrowleftPrimary,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillDeepPurpleA,
    );
  }

  /// Section Widget
  Widget _buildTen(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(
          top: 513.v,
          bottom: 103.v,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 45.v,
        ),
        decoration: AppDecoration.gradientGrayToGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder30,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            _buildSave(context),
            _buildApplyNow(context),
          ],
        ),
      ),
    );
  }
}
