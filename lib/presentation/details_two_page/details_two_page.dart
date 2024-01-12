import '../details_two_page/widgets/listframethree_item_widget.dart';
import '../details_two_page/widgets/listuserprofile_item_widget.dart';
import 'bloc/details_two_bloc.dart';
import 'models/details_two_model.dart';
import 'models/listframethree_item_model.dart';
import 'models/listuserprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:izza_auliyai_rabby_s_application3/core/app_export.dart';
import 'package:izza_auliyai_rabby_s_application3/widgets/custom_icon_button.dart';
import 'package:izza_auliyai_rabby_s_application3/widgets/custom_search_view.dart';
import 'package:readmore/readmore.dart';

// ignore_for_file: must_be_immutable
class DetailsTwoPage extends StatelessWidget {
  const DetailsTwoPage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<DetailsTwoBloc>(
      create: (context) => DetailsTwoBloc(DetailsTwoState(
        detailsTwoModelObj: DetailsTwoModel(),
      ))
        ..add(DetailsTwoInitialEvent()),
      child: DetailsTwoPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 30.v),
          decoration: AppDecoration.fillGray,
          child: Column(
            children: [
              SizedBox(height: 59.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _buildRowFrameSeven(context),
                      SizedBox(height: 19.v),
                      _buildListFrameThree(context),
                      SizedBox(height: 30.v),
                      _buildRowFrameTen(context),
                      SizedBox(height: 37.v),
                      SizedBox(
                        height: 759.v,
                        width: double.maxFinite,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 23.h),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    _buildListUserProfile(context),
                                    SizedBox(height: 24.v),
                                    _buildColumnFrameTwentyTwo(context),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: 206.v,
                                width: double.maxFinite,
                                margin: EdgeInsets.only(bottom: 115.v),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    30.h,
                                  ),
                                  gradient: LinearGradient(
                                    begin: Alignment(0.5, -0.19),
                                    end: Alignment(0.5, 0.81),
                                    colors: [
                                      appTheme.gray90002.withOpacity(0),
                                      appTheme.gray90001,
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowFrameSeven(BuildContext context) {
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
  Widget _buildListFrameThree(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 45.v,
        child: BlocSelector<DetailsTwoBloc, DetailsTwoState, DetailsTwoModel?>(
          selector: (state) => state.detailsTwoModelObj,
          builder: (context, detailsTwoModelObj) {
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
              itemCount: detailsTwoModelObj?.listframethreeItemList.length ?? 0,
              itemBuilder: (context, index) {
                ListframethreeItemModel model =
                    detailsTwoModelObj?.listframethreeItemList[index] ??
                        ListframethreeItemModel();
                return ListframethreeItemWidget(
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
  Widget _buildRowFrameTen(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 23.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: BlocSelector<DetailsTwoBloc, DetailsTwoState,
                TextEditingController?>(
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
  Widget _buildListUserProfile(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 1.h),
      child: BlocSelector<DetailsTwoBloc, DetailsTwoState, DetailsTwoModel?>(
        selector: (state) => state.detailsTwoModelObj,
        builder: (context, detailsTwoModelObj) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 25.v,
              );
            },
            itemCount: detailsTwoModelObj?.listuserprofileItemList.length ?? 0,
            itemBuilder: (context, index) {
              ListuserprofileItemModel model =
                  detailsTwoModelObj?.listuserprofileItemList[index] ??
                      ListuserprofileItemModel();
              return ListuserprofileItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnFrameTwentyTwo(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillOnError.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder22,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 16.v),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              right: 13.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomIconButton(
                  height: 48.adaptSize,
                  width: 48.adaptSize,
                  padding: EdgeInsets.all(10.h),
                  decoration: IconButtonStyleHelper.fillGray,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgSpotifyLogo,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "msg_graphic_designer".tr,
                        style: theme.textTheme.titleMedium,
                      ),
                      SizedBox(height: 3.v),
                      Text(
                        "lbl_spotify".tr,
                        style: CustomTextStyles.bodySmallPoppinsPrimary,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  width: 97.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 17.h,
                    vertical: 12.v,
                  ),
                  decoration: AppDecoration.outlinePrimaryContainer.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder22,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "lbl_view".tr,
                        style: CustomTextStyles.titleSmallPoppinsDeeppurpleA400,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgLink,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        margin: EdgeInsets.only(
                          left: 4.h,
                          top: 3.v,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 14.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                right: 57.h,
              ),
              child: Row(
                children: [
                  Container(
                    width: 95.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 11.h,
                      vertical: 2.v,
                    ),
                    decoration: AppDecoration.outlineBlack.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder16,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgLocationOnWhite24dp,
                          height: 16.adaptSize,
                          width: 16.adaptSize,
                          margin: EdgeInsets.symmetric(vertical: 2.v),
                        ),
                        Text(
                          "lbl_remote".tr,
                          style: theme.textTheme.labelLarge,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 102.h,
                    margin: EdgeInsets.only(left: 8.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 11.h,
                      vertical: 2.v,
                    ),
                    decoration: AppDecoration.outlineBlack.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder16,
                    ),
                    child: Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgSchoolWhite24dp,
                          height: 16.adaptSize,
                          width: 16.adaptSize,
                          margin: EdgeInsets.symmetric(vertical: 2.v),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 6.h),
                          child: Text(
                            "lbl_freshers".tr,
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 96.h,
                    margin: EdgeInsets.only(left: 8.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 11.h,
                      vertical: 2.v,
                    ),
                    decoration: AppDecoration.outlineBlack.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder16,
                    ),
                    child: Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgScheduleWhite24dp,
                          height: 16.adaptSize,
                          width: 16.adaptSize,
                          margin: EdgeInsets.symmetric(vertical: 2.v),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text(
                            "lbl_fulltime".tr,
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10.v),
          SizedBox(
            width: 350.h,
            child: ReadMoreText(
              "msg_ux_designers_are".tr,
              trimLines: 2,
              colorClickableText: theme.colorScheme.primary,
              trimMode: TrimMode.Line,
              trimCollapsedText: "lbl_read_more".tr,
              moreStyle: CustomTextStyles.labelLargePrimary.copyWith(
                height: 1.40,
              ),
              lessStyle: CustomTextStyles.labelLargePrimary.copyWith(
                height: 1.40,
              ),
            ),
          ),
          SizedBox(height: 10.v),
          SizedBox(
            height: 61.v,
            width: 382.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 61.v,
                    width: 382.h,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primary,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25.h),
                        bottomRight: Radius.circular(21.h),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.h,
                      vertical: 17.v,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgHistorywhite24dp1,
                          height: 16.adaptSize,
                          width: 16.adaptSize,
                          margin: EdgeInsets.symmetric(vertical: 5.v),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 4.h,
                            top: 4.v,
                            bottom: 4.v,
                          ),
                          child: Text(
                            "msg_posted_2_days_ago".tr,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.labelLarge12,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "lbl_50k_mo".tr,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.titleMediumBlack900,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
