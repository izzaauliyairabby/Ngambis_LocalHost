import 'bloc/onboarding_one_bloc.dart';
import 'models/onboarding_one_model.dart';
import 'package:flutter/material.dart';
import 'package:izza_auliyai_rabby_s_application3/core/app_export.dart';
import 'package:izza_auliyai_rabby_s_application3/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingOneScreen extends StatelessWidget {
  const OnboardingOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OnboardingOneBloc>(
      create: (context) => OnboardingOneBloc(OnboardingOneState(
        onboardingOneModelObj: OnboardingOneModel(),
      ))
        ..add(OnboardingOneInitialEvent()),
      child: OnboardingOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingOneBloc, OnboardingOneState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.only(
                left: 4.h,
                top: 62.v,
                right: 4.h,
              ),
              child: Column(
                children: [
                  Container(
                    width: 327.h,
                    margin: EdgeInsets.only(
                      left: 47.h,
                      right: 46.h,
                    ),
                    child: Text(
                      "msg_your_search_for2".tr,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.headlineLarge,
                    ),
                  ),
                  SizedBox(height: 29.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgEWalletWithVirtual,
                    height: 400.adaptSize,
                    width: 400.adaptSize,
                    alignment: Alignment.centerRight,
                  ),
                  SizedBox(height: 65.v),
                  CustomElevatedButton(
                    height: 56.v,
                    text: "lbl_next".tr,
                    margin: EdgeInsets.symmetric(horizontal: 41.h),
                    rightIcon: Container(
                      margin: EdgeInsets.only(left: 8.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgArrowleftPrimary,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                    ),
                  ),
                  SizedBox(height: 39.v),
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
}
