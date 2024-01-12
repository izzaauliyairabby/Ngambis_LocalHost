import 'bloc/home_one_bloc.dart';
import 'models/home_one_model.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:izza_auliyai_rabby_s_application3/core/app_export.dart';
import 'package:izza_auliyai_rabby_s_application3/widgets/custom_elevated_button.dart';
import 'package:izza_auliyai_rabby_s_application3/widgets/custom_icon_button.dart';

class HomeOneScreen extends StatelessWidget {
  const HomeOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeOneBloc>(
      create: (context) => HomeOneBloc(HomeOneState(
        homeOneModelObj: HomeOneModel(),
      ))
        ..add(HomeOneInitialEvent()),
      child: HomeOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeOneBloc, HomeOneState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.only(
                left: 62.h,
                top: 75.v,
                right: 62.h,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomIconButton(
                    height: 40.adaptSize,
                    width: 40.adaptSize,
                    padding: EdgeInsets.all(7.h),
                    decoration: IconButtonStyleHelper.fillGrayTL20,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgLogoGoogle,
                    ),
                  ),
                  SizedBox(height: 20.v),
                  Text(
                    "lbl_ui_ux_designer".tr,
                    style: CustomTextStyles.titleSmallPrimary,
                  ),
                  SizedBox(height: 5.v),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_google_inc".tr,
                        style: CustomTextStyles.bodySmallOpenSansPrimary,
                      ),
                      Container(
                        height: 2.adaptSize,
                        width: 2.adaptSize,
                        margin: EdgeInsets.only(
                          left: 5.h,
                          top: 8.v,
                          bottom: 7.v,
                        ),
                        decoration: BoxDecoration(
                          color: theme.colorScheme.primary,
                          borderRadius: BorderRadius.circular(
                            1.h,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5.h),
                        child: Text(
                          "lbl_california_usa".tr,
                          style: CustomTextStyles.bodySmallOpenSansPrimary,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 19.v),
                  Padding(
                    padding: EdgeInsets.only(right: 57.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 3.adaptSize,
                          width: 3.adaptSize,
                          margin: EdgeInsets.only(
                            top: 5.v,
                            bottom: 8.v,
                          ),
                          decoration: BoxDecoration(
                            color: theme.colorScheme.primary,
                            borderRadius: BorderRadius.circular(
                              1.h,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.h),
                          child: Text(
                            "msg_shipped_on_february".tr,
                            style: CustomTextStyles.bodySmallOpenSansPrimary,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 14.v),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 3.adaptSize,
                        width: 3.adaptSize,
                        margin: EdgeInsets.only(
                          top: 5.v,
                          bottom: 8.v,
                        ),
                        decoration: BoxDecoration(
                          color: theme.colorScheme.primary,
                          borderRadius: BorderRadius.circular(
                            1.h,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.h),
                        child: Text(
                          "msg_updated_by_recruiter".tr,
                          style: CustomTextStyles.bodySmallOpenSansPrimary,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 27.v),
                  Text(
                    "lbl_job_details2".tr,
                    style: CustomTextStyles.titleSmallPrimary,
                  ),
                  SizedBox(height: 21.v),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 3.adaptSize,
                        width: 3.adaptSize,
                        margin: EdgeInsets.only(
                          top: 5.v,
                          bottom: 7.v,
                        ),
                        decoration: BoxDecoration(
                          color: theme.colorScheme.primary,
                          borderRadius: BorderRadius.circular(
                            1.h,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.h),
                        child: Text(
                          "lbl_senior_designer".tr,
                          style: CustomTextStyles.bodySmallPrimary_1,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 13.v),
                  Row(
                    children: [
                      Container(
                        height: 3.adaptSize,
                        width: 3.adaptSize,
                        margin: EdgeInsets.only(
                          top: 7.v,
                          bottom: 5.v,
                        ),
                        decoration: BoxDecoration(
                          color: theme.colorScheme.primary,
                          borderRadius: BorderRadius.circular(
                            1.h,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.h),
                        child: Text(
                          "lbl_full_time2".tr,
                          style: CustomTextStyles.bodySmallPrimary_1,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16.v),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 3.adaptSize,
                        width: 3.adaptSize,
                        margin: EdgeInsets.only(
                          top: 6.v,
                          bottom: 7.v,
                        ),
                        decoration: BoxDecoration(
                          color: theme.colorScheme.primary,
                          borderRadius: BorderRadius.circular(
                            1.h,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.h),
                        child: Text(
                          "msg_1_3_years_work_experience".tr,
                          style: CustomTextStyles.bodySmallPrimary_1,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30.v),
                  Text(
                    "msg_application_details".tr,
                    style: CustomTextStyles.titleSmallPrimary,
                  ),
                  SizedBox(height: 19.v),
                  Row(
                    children: [
                      Container(
                        height: 3.adaptSize,
                        width: 3.adaptSize,
                        margin: EdgeInsets.only(
                          top: 6.v,
                          bottom: 7.v,
                        ),
                        decoration: BoxDecoration(
                          color: theme.colorScheme.primary,
                          borderRadius: BorderRadius.circular(
                            1.h,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.h),
                        child: Text(
                          "lbl_cv_resume".tr,
                          style: CustomTextStyles.bodySmallOpenSansPrimary,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8.v),
                  Container(
                    decoration: AppDecoration.outlineErrorContainer.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder16,
                    ),
                    child: DottedBorder(
                      color: theme.colorScheme.errorContainer,
                      padding: EdgeInsets.only(
                        left: 1.h,
                        top: 1.v,
                        right: 1.h,
                        bottom: 1.v,
                      ),
                      strokeWidth: 1.h,
                      radius: Radius.circular(15),
                      borderType: BorderType.RRect,
                      dashPattern: [
                        3,
                        3,
                      ],
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 8.h,
                          vertical: 14.v,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(
                              height: 44.v,
                              width: 33.h,
                              child: Stack(
                                alignment: Alignment.topRight,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgUser,
                                    height: 44.v,
                                    width: 33.h,
                                    alignment: Alignment.center,
                                  ),
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 6.h),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                            imagePath: ImageConstant
                                                .imgContrastRedA100,
                                            height: 13.v,
                                            width: 12.h,
                                            alignment: Alignment.centerRight,
                                          ),
                                          SizedBox(height: 10.v),
                                          Text(
                                            "lbl_pdf".tr,
                                            style: theme.textTheme.labelMedium,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: 20.h,
                                  top: 4.v,
                                  bottom: 5.v,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "msg_jamet_kudasi_cv".tr,
                                      style: CustomTextStyles
                                          .bodySmallOnPrimaryContainer,
                                    ),
                                    SizedBox(height: 3.v),
                                    Row(
                                      children: [
                                        Text(
                                          "lbl_867_kb".tr,
                                          style:
                                              CustomTextStyles.bodySmallPrimary,
                                        ),
                                        Container(
                                          height: 2.adaptSize,
                                          width: 2.adaptSize,
                                          margin: EdgeInsets.only(
                                            left: 5.h,
                                            top: 6.v,
                                            bottom: 5.v,
                                          ),
                                          decoration: BoxDecoration(
                                            color: theme.colorScheme.primary,
                                            borderRadius: BorderRadius.circular(
                                              1.h,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 5.h),
                                          child: Text(
                                            "msg_14_feb_2022_at_11_30".tr,
                                            style: CustomTextStyles
                                                .bodySmallPrimary,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 44.v),
                  CustomElevatedButton(
                    height: 50.v,
                    text: "msg_apply_for_more_project".tr.toUpperCase(),
                    margin: EdgeInsets.only(left: 3.h),
                    buttonStyle: CustomButtonStyles.outlineIndigoD,
                    buttonTextStyle: CustomTextStyles.titleSmallPrimary_1,
                  ),
                  SizedBox(height: 5.v),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
