import 'bloc/onboarding_two_bloc.dart';
import 'models/onboarding_two_model.dart';
import 'package:flutter/material.dart';
import 'package:izza_auliyai_rabby_s_application3/core/app_export.dart';
import 'package:izza_auliyai_rabby_s_application3/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingTwoScreen extends StatelessWidget {
  const OnboardingTwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OnboardingTwoBloc>(
      create: (context) => OnboardingTwoBloc(OnboardingTwoState(
        onboardingTwoModelObj: OnboardingTwoModel(),
      ))
        ..add(OnboardingTwoInitialEvent()),
      child: OnboardingTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingTwoBloc, OnboardingTwoState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 15.h,
                vertical: 49.v,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 616.v,
                    width: 400.h,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        _buildCollaborateWithFrame(context),
                        CustomImageView(
                          imagePath: ImageConstant.imgYoungWomanDoing,
                          height: 400.adaptSize,
                          width: 400.adaptSize,
                          alignment: Alignment.bottomCenter,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 29.v),
                  CustomElevatedButton(
                    height: 56.v,
                    text: "lbl_start_searching".tr,
                    margin: EdgeInsets.symmetric(horizontal: 30.h),
                    rightIcon: Container(
                      margin: EdgeInsets.only(left: 8.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgArrowleftPrimary,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                    ),
                  ),
                  SizedBox(height: 40.v),
                  SizedBox(
                    height: 9.v,
                    child: AnimatedSmoothIndicator(
                      activeIndex: 0,
                      count: 2,
                      effect: ScrollingDotsEffect(
                        activeDotColor: Color(0X1212121D),
                        dotHeight: 9.v,
                      ),
                    ),
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

  /// Section Widget
  Widget _buildCollaborateWithFrame(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 30.h,
          right: 15.h,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 354.h,
              child: Text(
                "msg_collaborate_with".tr,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: theme.textTheme.headlineLarge,
              ),
            ),
            SizedBox(height: 95.v),
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
