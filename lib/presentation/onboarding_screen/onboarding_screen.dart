import 'bloc/onboarding_bloc.dart';
import 'models/onboarding_model.dart';
import 'package:flutter/material.dart';
import 'package:izza_auliyai_rabby_s_application3/core/app_export.dart';
import 'package:izza_auliyai_rabby_s_application3/widgets/custom_elevated_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OnboardingBloc>(
      create: (context) => OnboardingBloc(OnboardingState(
        onboardingModelObj: OnboardingModel(),
      ))
        ..add(OnboardingInitialEvent()),
      child: OnboardingScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingBloc, OnboardingState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 84.v),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        margin: EdgeInsets.only(bottom: 302.v),
                        padding: EdgeInsets.symmetric(horizontal: 5.h),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 544.v,
                              width: 402.h,
                              child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  _buildSearchFrame(context),
                                  CustomImageView(
                                    imagePath:
                                        ImageConstant.imgMobileAppDevelopment,
                                    height: 456.v,
                                    width: 402.h,
                                    alignment: Alignment.bottomCenter,
                                  ),
                                ],
                              ),
                            ),
                            CustomElevatedButton(
                              height: 56.v,
                              text: "lbl_start_searching".tr,
                              margin: EdgeInsets.symmetric(horizontal: 40.h),
                              rightIcon: Container(
                                margin: EdgeInsets.only(left: 8.h),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgArrowleftPrimary,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildSearchFrame(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: EdgeInsets.only(right: 26.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 366.h,
              margin: EdgeInsets.only(left: 9.h),
              child: Text(
                "msg_your_search_for".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: theme.textTheme.headlineSmall,
              ),
            ),
            SizedBox(height: 155.v),
            Container(
              height: 56.v,
              width: 340.h,
              decoration: BoxDecoration(
                color: appTheme.deepPurpleA40001.withOpacity(0.6),
                borderRadius: BorderRadius.circular(
                  28.h,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
