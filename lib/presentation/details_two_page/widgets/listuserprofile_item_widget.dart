import '../models/listuserprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:izza_auliyai_rabby_s_application3/core/app_export.dart';
import 'package:izza_auliyai_rabby_s_application3/widgets/custom_elevated_button.dart';
import 'package:izza_auliyai_rabby_s_application3/widgets/custom_outlined_button.dart';
import 'package:readmore/readmore.dart';

// ignore: must_be_immutable
class ListuserprofileItemWidget extends StatelessWidget {
  ListuserprofileItemWidget(
    this.listuserprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ListuserprofileItemModel listuserprofileItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240.v,
      width: 382.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 13.h,
                vertical: 16.v,
              ),
              decoration: AppDecoration.fillDeeppurple30001.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder22,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 3.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 1.v),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                listuserprofileItemModelObj.jobTitle!,
                                style: theme.textTheme.titleMedium,
                              ),
                              SizedBox(height: 1.v),
                              Text(
                                listuserprofileItemModelObj.userName!,
                                style: CustomTextStyles.bodySmallPoppinsPrimary,
                              ),
                            ],
                          ),
                        ),
                        CustomOutlinedButton(
                          width: 97.h,
                          text: "lbl_view".tr,
                          rightIcon: Container(
                            margin: EdgeInsets.only(left: 4.h),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgLink,
                              height: 16.adaptSize,
                              width: 16.adaptSize,
                            ),
                          ),
                          buttonTextStyle:
                              CustomTextStyles.titleSmallPoppinsDeeppurpleA400,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 3.h,
                      right: 44.h,
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
                                listuserprofileItemModelObj.remoteText!,
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
                                  listuserprofileItemModelObj.freshersText!,
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
                                  listuserprofileItemModelObj.fulltimeText!,
                                  style: theme.textTheme.labelLarge,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.v),
                  Container(
                    width: 301.h,
                    margin: EdgeInsets.only(left: 3.h),
                    child: ReadMoreText(
                      "msg_ux_designers_are".tr,
                      trimLines: 3,
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
                  SizedBox(height: 47.v),
                ],
              ),
            ),
          ),
          CustomElevatedButton(
            height: 61.v,
            width: 382.h,
            text: "msg_posted_2_days_ago".tr,
            leftIcon: Container(
              margin: EdgeInsets.only(right: 4.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgHistorywhite24dp1,
                height: 16.adaptSize,
                width: 16.adaptSize,
              ),
            ),
            buttonStyle: CustomButtonStyles.fillPrimary,
            buttonTextStyle: CustomTextStyles.labelLarge12,
            alignment: Alignment.bottomCenter,
          ),
        ],
      ),
    );
  }
}
