import 'bloc/home_two_bloc.dart';
import 'models/home_two_model.dart';
import 'package:flutter/material.dart';
import 'package:izza_auliyai_rabby_s_application3/core/app_export.dart';
import 'package:izza_auliyai_rabby_s_application3/presentation/details_two_page/details_two_page.dart';
import 'package:izza_auliyai_rabby_s_application3/widgets/custom_bottom_bar.dart';
import 'package:izza_auliyai_rabby_s_application3/widgets/custom_elevated_button.dart';
import 'package:izza_auliyai_rabby_s_application3/widgets/custom_icon_button.dart';

class HomeTwoScreen extends StatelessWidget {
  HomeTwoScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeTwoBloc>(
      create: (context) => HomeTwoBloc(HomeTwoState(
        homeTwoModelObj: HomeTwoModel(),
      ))
        ..add(HomeTwoInitialEvent()),
      child: HomeTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeTwoBloc, HomeTwoState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 27.h,
                vertical: 45.v,
              ),
              child: Column(
                children: [
                  SizedBox(height: 5.v),
                  _buildProfileSection(context),
                  SizedBox(height: 45.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.h),
                    child: _buildWorkExperienceSection(
                      context,
                      thumbsUpImage: ImageConstant.imgIcon,
                      workExperienceText: "lbl_about_me".tr,
                    ),
                  ),
                  SizedBox(height: 10.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.h),
                    child: _buildWorkExperienceSection(
                      context,
                      thumbsUpImage: ImageConstant.imgThumbsUp,
                      workExperienceText: "lbl_work_experience".tr,
                    ),
                  ),
                  SizedBox(height: 10.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.h),
                    child: _buildWorkExperienceSection(
                      context,
                      thumbsUpImage: ImageConstant.imgThumbsUpDeepPurpleA70001,
                      workExperienceText: "lbl_education".tr,
                    ),
                  ),
                  SizedBox(height: 10.v),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.h,
                      vertical: 23.v,
                    ),
                    decoration: AppDecoration.fillPrimary.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder16,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 62.h,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgSettings,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 3.v),
                                child: Text(
                                  "lbl_skill".tr,
                                  style: theme.textTheme.titleSmall,
                                ),
                              ),
                            ],
                          ),
                        ),
                        CustomIconButton(
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          padding: EdgeInsets.all(8.h),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgClose,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.v),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.h,
                      vertical: 23.v,
                    ),
                    decoration: AppDecoration.fillPrimary.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder16,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 97.h,
                          margin: EdgeInsets.only(
                            top: 2.v,
                            bottom: 1.v,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                height: 20.adaptSize,
                                width: 20.adaptSize,
                                child: Stack(
                                  alignment: Alignment.bottomLeft,
                                  children: [
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Container(
                                        width: 11.adaptSize,
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 2.h),
                                        decoration: AppDecoration
                                            .outlineDeepPurpleA
                                            .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder3,
                                        ),
                                        child: Text(
                                          "lbl_a".tr,
                                          style: theme.textTheme.labelSmall,
                                        ),
                                      ),
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant
                                          .imgRectangle166DeepPurpleA70001,
                                      height: 5.adaptSize,
                                      width: 5.adaptSize,
                                      alignment: Alignment.bottomLeft,
                                      margin: EdgeInsets.only(
                                        left: 2.h,
                                        bottom: 2.v,
                                      ),
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgRectangle167,
                                      height: 5.adaptSize,
                                      width: 5.adaptSize,
                                      alignment: Alignment.topRight,
                                      margin: EdgeInsets.only(
                                        top: 2.v,
                                        right: 2.h,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomRight,
                                      child: Container(
                                        height: 11.adaptSize,
                                        width: 11.adaptSize,
                                        padding: EdgeInsets.all(1.h),
                                        decoration: AppDecoration
                                            .outlineDeepPurpleA
                                            .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder3,
                                        ),
                                        child: CustomImageView(
                                          imagePath: ImageConstant.imgVector,
                                          height: 6.v,
                                          width: 5.h,
                                          alignment: Alignment.center,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                "lbl_language".tr,
                                style: theme.textTheme.titleSmall,
                              ),
                            ],
                          ),
                        ),
                        CustomIconButton(
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          padding: EdgeInsets.all(8.h),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgClose,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.v),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.h,
                      vertical: 23.v,
                    ),
                    decoration: AppDecoration.fillPrimary.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder16,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          height: 19.v,
                          width: 17.h,
                          margin: EdgeInsets.only(
                            left: 3.h,
                            bottom: 2.v,
                          ),
                          child: Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgTelevision,
                                height: 9.adaptSize,
                                width: 9.adaptSize,
                                radius: BorderRadius.circular(
                                  1.h,
                                ),
                                alignment: Alignment.bottomLeft,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgRectangle166,
                                height: 9.adaptSize,
                                width: 9.adaptSize,
                                radius: BorderRadius.circular(
                                  1.h,
                                ),
                                alignment: Alignment.bottomRight,
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                  margin: EdgeInsets.only(
                                    left: 1.h,
                                    right: 2.h,
                                  ),
                                  padding: EdgeInsets.all(1.h),
                                  decoration:
                                      AppDecoration.outlineDeepPurpleA.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder7,
                                  ),
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgStar1,
                                    height: 9.adaptSize,
                                    width: 9.adaptSize,
                                    radius: BorderRadius.circular(
                                      1.h,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 13.h,
                            top: 3.v,
                          ),
                          child: Text(
                            "lbl_appreciation".tr,
                            style: theme.textTheme.titleSmall,
                          ),
                        ),
                        Spacer(),
                        CustomIconButton(
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          padding: EdgeInsets.all(8.h),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgClose,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            bottomNavigationBar: Padding(
              padding: EdgeInsets.only(
                left: 47.h,
                right: 30.h,
              ),
              child: _buildBottomBarSection(context),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildProfileSection(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 1.h),
      padding: EdgeInsets.symmetric(
        horizontal: 13.h,
        vertical: 21.v,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgGroup63,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 5.v),
          Padding(
            padding: EdgeInsets.only(
              left: 20.h,
              right: 10.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage56x57,
                  height: 56.v,
                  width: 57.h,
                  radius: BorderRadius.circular(
                    28.h,
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgQuestion,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(bottom: 34.v),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgSearch,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(
                    left: 15.h,
                    bottom: 34.v,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 41.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 14.h),
              child: Text(
                "lbl_california_usa".tr,
                style: CustomTextStyles.bodySmallPrimary_1,
              ),
            ),
          ),
          SizedBox(height: 26.v),
          Padding(
            padding: EdgeInsets.only(left: 14.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 5.v,
                    bottom: 7.v,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_120k".tr,
                          style: CustomTextStyles.titleSmallffffffff,
                        ),
                        TextSpan(
                          text: "lbl_follower".tr,
                          style: CustomTextStyles.bodySmallffffffff,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 21.h,
                    top: 6.v,
                    bottom: 6.v,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_23k".tr,
                          style: CustomTextStyles.titleSmallffffffff,
                        ),
                        TextSpan(
                          text: "lbl_following".tr,
                          style: CustomTextStyles.bodySmallffffffff,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Spacer(),
                CustomElevatedButton(
                  height: 30.v,
                  width: 120.h,
                  text: "lbl_edit_profile".tr,
                  rightIcon: Container(
                    margin: EdgeInsets.only(left: 10.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgEditPrimary,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                    ),
                  ),
                  buttonStyle: CustomButtonStyles.fillPrimaryTL6,
                  buttonTextStyle: CustomTextStyles.bodySmallPrimary_1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBarSection(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  /// Common widget
  Widget _buildWorkExperienceSection(
    BuildContext context, {
    required String thumbsUpImage,
    required String workExperienceText,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 23.v,
      ),
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: thumbsUpImage,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 3.v,
            ),
            child: Text(
              workExperienceText,
              style: theme.textTheme.titleSmall!.copyWith(
                color: appTheme.gray900,
              ),
            ),
          ),
          Spacer(),
          CustomIconButton(
            height: 24.adaptSize,
            width: 24.adaptSize,
            padding: EdgeInsets.all(8.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgClose,
            ),
          ),
        ],
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.detailsTwoPage;
      case BottomBarEnum.Useraccount:
        return "/";
      case BottomBarEnum.Chatroom:
        return "/";
      case BottomBarEnum.Settings25x25:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.detailsTwoPage:
        return DetailsTwoPage.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
