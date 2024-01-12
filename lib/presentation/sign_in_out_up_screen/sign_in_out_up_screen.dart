import 'bloc/sign_in_out_up_bloc.dart';
import 'models/sign_in_out_up_model.dart';
import 'package:flutter/material.dart';
import 'package:izza_auliyai_rabby_s_application3/core/app_export.dart';
import 'package:izza_auliyai_rabby_s_application3/core/utils/validation_functions.dart';
import 'package:izza_auliyai_rabby_s_application3/widgets/custom_elevated_button.dart';
import 'package:izza_auliyai_rabby_s_application3/widgets/custom_text_form_field.dart';

class SignInOutUpScreen extends StatelessWidget {
  SignInOutUpScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<SignInOutUpBloc>(
      create: (context) => SignInOutUpBloc(SignInOutUpState(
        signInOutUpModelObj: SignInOutUpModel(),
      ))
        ..add(SignInOutUpInitialEvent()),
      child: SignInOutUpScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 15.h),
                child: Column(
                  children: [
                    _buildNinetyEightStack(context),
                    SizedBox(height: 24.v),
                    _buildEmailEditText(context),
                    SizedBox(height: 17.v),
                    _buildPasswordEditText(context),
                    SizedBox(height: 30.v),
                    Text(
                      "lbl_or".tr,
                      style: CustomTextStyles.titleLargePrimary,
                    ),
                    SizedBox(height: 27.v),
                    _buildContinueWithGoogleButton(context),
                    SizedBox(height: 45.v),
                    _buildContinueButton(context),
                    SizedBox(height: 36.v),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "msg_don_t_have_an_account2".tr,
                            style: CustomTextStyles.titleSmallPoppinsffffffff,
                          ),
                          TextSpan(
                            text: "lbl_sign_up".tr,
                            style: CustomTextStyles.titleSmallPoppinsff5424fd,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNinetyEightStack(BuildContext context) {
    return SizedBox(
      height: 420.v,
      width: 400.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imageNotFound,
            height: 1.v,
            width: 100.h,
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(
              left: 30.h,
              top: 50.v,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              "lbl_let_s_you_in".tr,
              style: theme.textTheme.displayMedium,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgCustomerService,
            height: 379.v,
            width: 400.h,
            alignment: Alignment.topCenter,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 42.h,
        right: 22.h,
      ),
      child: BlocSelector<SignInOutUpBloc, SignInOutUpState,
          TextEditingController?>(
        selector: (state) => state.emailEditTextController,
        builder: (context, emailEditTextController) {
          return CustomTextFormField(
            controller: emailEditTextController,
            hintText: "lbl_email_adress".tr,
            textInputType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null || (!isValidEmail(value, isRequired: true))) {
                return "err_msg_please_enter_valid_email".tr;
              }
              return null;
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 44.h,
        right: 22.h,
      ),
      child: BlocSelector<SignInOutUpBloc, SignInOutUpState,
          TextEditingController?>(
        selector: (state) => state.passwordEditTextController,
        builder: (context, passwordEditTextController) {
          return CustomTextFormField(
            controller: passwordEditTextController,
            hintText: "lbl_password".tr,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            alignment: Alignment.centerRight,
            validator: (value) {
              if (value == null ||
                  (!isValidPassword(value, isRequired: true))) {
                return "err_msg_please_enter_valid_password".tr;
              }
              return null;
            },
            obscureText: true,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildContinueWithGoogleButton(BuildContext context) {
    return CustomElevatedButton(
      height: 53.v,
      text: "msg_continue_with_google".tr,
      margin: EdgeInsets.only(
        left: 44.h,
        right: 30.h,
      ),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 12.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgGoogleLogo,
          height: 28.v,
          width: 26.h,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillPrimaryTL15,
      buttonTextStyle: CustomTextStyles.titleSmallPoppinsBlack900Medium,
    );
  }

  /// Section Widget
  Widget _buildContinueButton(BuildContext context) {
    return CustomElevatedButton(
      height: 56.v,
      text: "lbl_continue".tr,
      margin: EdgeInsets.only(
        left: 38.h,
        right: 22.h,
      ),
      rightIcon: Container(
        margin: EdgeInsets.only(left: 8.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgArrowleftPrimary,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
    );
  }
}
