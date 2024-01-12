import 'bloc/home_bloc.dart';
import 'models/home_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:izza_auliyai_rabby_s_application3/core/app_export.dart';
import 'package:izza_auliyai_rabby_s_application3/widgets/app_bar/appbar_trailing_image.dart';
import 'package:izza_auliyai_rabby_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:izza_auliyai_rabby_s_application3/widgets/custom_icon_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc(HomeState(
        homeModelObj: HomeModel(),
      ))
        ..add(HomeInitialEvent()),
      child: HomeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  _buildStackContainer(context),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 22.h,
                      vertical: 17.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "lbl_today".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                        SizedBox(height: 29.v),
                        Container(
                          width: 220.h,
                          margin: EdgeInsets.only(left: 163.h),
                          padding: EdgeInsets.symmetric(
                            horizontal: 22.h,
                            vertical: 18.v,
                          ),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: fs.Svg(
                                ImageConstant.imgGroup25,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Text(
                            "msg_hello_sir_good".tr,
                            style: CustomTextStyles.bodyMediumDMSans,
                          ),
                        ),
                        SizedBox(height: 5.v),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "lbl_09_30_am".tr,
                              style: CustomTextStyles.bodySmall10,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgCheckmark,
                              height: 11.v,
                              width: 16.h,
                              margin: EdgeInsets.only(
                                left: 10.h,
                                top: 2.v,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 12.v),
                        Padding(
                          padding: EdgeInsets.only(right: 112.h),
                          child: _buildRecentOrders(
                            context,
                            ohYesPleaseSend: "msg_morning_can_i_help".tr,
                          ),
                        ),
                        SizedBox(height: 5.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 51.h),
                            child: Text(
                              "lbl_09_31_am".tr,
                              style: CustomTextStyles.bodySmall10,
                            ),
                          ),
                        ),
                        SizedBox(height: 13.v),
                        Container(
                          width: 299.h,
                          margin: EdgeInsets.only(left: 84.h),
                          padding: EdgeInsets.all(17.h),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: fs.Svg(
                                ImageConstant.imgGroup25,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 29.v),
                              Container(
                                width: 252.h,
                                margin: EdgeInsets.only(right: 12.h),
                                child: Text(
                                  "msg_i_saw_the_ui_ux".tr,
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles.bodyMediumDMSans
                                      .copyWith(
                                    height: 1.50,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 5.v),
                        _buildUserProfile(
                          context,
                          timeText: "lbl_09_33_am".tr,
                          checkmarkImage: ImageConstant.imgCheckmark,
                        ),
                        SizedBox(height: 13.v),
                        Padding(
                          padding: EdgeInsets.only(right: 112.h),
                          child: _buildRecentOrders(
                            context,
                            ohYesPleaseSend: "msg_oh_yes_please_send".tr,
                          ),
                        ),
                        SizedBox(height: 5.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 51.h),
                            child: Text(
                              "lbl_09_35_am".tr,
                              style: CustomTextStyles.bodySmall10,
                            ),
                          ),
                        ),
                        SizedBox(height: 13.v),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 11.h,
                            vertical: 12.v,
                          ),
                          decoration: AppDecoration.fillDeepPurpleA.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder16,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                width: 159.h,
                                margin: EdgeInsets.only(
                                  left: 12.h,
                                  top: 4.v,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 49.v,
                                      width: 37.h,
                                      margin: EdgeInsets.only(bottom: 5.v),
                                      child: Stack(
                                        alignment: Alignment.topRight,
                                        children: [
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant.imgUserRed700,
                                            height: 49.v,
                                            width: 37.h,
                                            alignment: Alignment.center,
                                          ),
                                          Align(
                                            alignment: Alignment.topRight,
                                            child: Padding(
                                              padding:
                                                  EdgeInsets.only(left: 7.h),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgContrastRed300,
                                                    height: 14.adaptSize,
                                                    width: 14.adaptSize,
                                                    alignment:
                                                        Alignment.centerRight,
                                                  ),
                                                  SizedBox(height: 11.v),
                                                  Text(
                                                    "lbl_pdf".tr,
                                                    style: theme
                                                        .textTheme.labelMedium,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: 103.h,
                                          child: Text(
                                            "msg_jamet_cv_ui_ux".tr,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: CustomTextStyles
                                                .bodySmallPrimary_1,
                                          ),
                                        ),
                                        SizedBox(height: 7.v),
                                        Text(
                                          "lbl_867_kb_pdf".tr,
                                          style: CustomTextStyles
                                              .bodySmallBluegray100,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgNotificationPrimary,
                                height: 27.adaptSize,
                                width: 27.adaptSize,
                                margin: EdgeInsets.only(
                                  left: 25.h,
                                  top: 16.v,
                                  bottom: 15.v,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 6.v),
                        _buildUserProfile(
                          context,
                          timeText: "lbl_09_33_am".tr,
                          checkmarkImage: ImageConstant.imgCheckmarkBlueGray400,
                        ),
                        SizedBox(height: 5.v),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            bottomNavigationBar: _buildSendMassage(context),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildStackContainer(BuildContext context) {
    return SizedBox(
      height: 176.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 22.h,
                vertical: 16.v,
              ),
              decoration: AppDecoration.gradientOnErrorContainerToBlueGray,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 16.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgArrowDown,
                    height: 27.adaptSize,
                    width: 27.adaptSize,
                  ),
                  SizedBox(height: 41.v),
                  Padding(
                    padding: EdgeInsets.only(left: 6.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 163.h,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgImage,
                                height: 56.v,
                                width: 57.h,
                                radius: BorderRadius.circular(
                                  28.h,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 9.v),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "lbl_orlando_diggs".tr,
                                      style: CustomTextStyles
                                          .titleSmallPrimaryMedium,
                                    ),
                                    SizedBox(height: 1.v),
                                    Row(
                                      children: [
                                        Container(
                                          height: 5.adaptSize,
                                          width: 5.adaptSize,
                                          margin: EdgeInsets.only(
                                            top: 7.v,
                                            bottom: 3.v,
                                          ),
                                          decoration: BoxDecoration(
                                            color: appTheme.green500,
                                            borderRadius: BorderRadius.circular(
                                              2.h,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 5.h),
                                          child: Text(
                                            "lbl_online".tr,
                                            style: CustomTextStyles
                                                .bodySmallPrimary_1,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        CustomImageView(
                          imagePath: ImageConstant.imgCall,
                          height: 27.v,
                          width: 28.h,
                          margin: EdgeInsets.only(
                            top: 10.v,
                            bottom: 18.v,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgRewind,
                          height: 27.adaptSize,
                          width: 27.adaptSize,
                          margin: EdgeInsets.only(
                            left: 11.h,
                            top: 10.v,
                            bottom: 19.v,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomAppBar(
            actions: [
              AppbarTrailingImage(
                imagePath: ImageConstant.imgEdit,
                margin: EdgeInsets.only(left: 40.h),
              ),
              AppbarTrailingImage(
                imagePath: ImageConstant.imgNotification,
                margin: EdgeInsets.only(
                  left: 15.h,
                  right: 40.h,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSendMassage(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 40.h,
        right: 22.h,
        bottom: 36.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 155.h,
            margin: EdgeInsets.symmetric(vertical: 14.v),
            decoration: BoxDecoration(
              borderRadius: BorderRadiusStyle.circleBorder16,
              image: DecorationImage(
                image: fs.Svg(
                  ImageConstant.imgGroup82,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgAttach,
                  height: 27.adaptSize,
                  width: 27.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 18.h,
                    top: 8.v,
                    bottom: 2.v,
                  ),
                  child: Text(
                    "msg_write_your_massage".tr,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              ],
            ),
          ),
          CustomIconButton(
            height: 56.v,
            width: 57.h,
            padding: EdgeInsets.all(12.h),
            decoration: IconButtonStyleHelper.outlineIndigoD,
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup28,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildRecentOrders(
    BuildContext context, {
    required String ohYesPleaseSend,
  }) {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgEllipse49,
          height: 39.v,
          width: 40.h,
          radius: BorderRadius.circular(
            20.h,
          ),
          margin: EdgeInsets.only(top: 34.v),
        ),
        Container(
          margin: EdgeInsets.only(left: 11.h),
          padding: EdgeInsets.symmetric(
            horizontal: 22.h,
            vertical: 15.v,
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: fs.Svg(
                ImageConstant.imgGroup23,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: 150.h,
            margin: EdgeInsets.only(right: 24.h),
            child: Text(
              ohYesPleaseSend,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodyMediumDMSansWhiteA700.copyWith(
                color: appTheme.whiteA700,
                height: 1.50,
              ),
            ),
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildUserProfile(
    BuildContext context, {
    required String timeText,
    required String checkmarkImage,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          timeText,
          style: CustomTextStyles.bodySmallOpenSans.copyWith(
            color: appTheme.blueGray30002,
          ),
        ),
        CustomImageView(
          imagePath: checkmarkImage,
          height: 11.v,
          width: 15.h,
          margin: EdgeInsets.only(
            left: 12.h,
            bottom: 2.v,
          ),
        ),
      ],
    );
  }
}
