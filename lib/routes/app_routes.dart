import 'package:flutter/material.dart';
import 'package:izza_auliyai_rabby_s_application3/presentation/details_screen/details_screen.dart';
import 'package:izza_auliyai_rabby_s_application3/presentation/onboarding_screen/onboarding_screen.dart';
import 'package:izza_auliyai_rabby_s_application3/presentation/onboarding_one_screen/onboarding_one_screen.dart';
import 'package:izza_auliyai_rabby_s_application3/presentation/onboarding_two_screen/onboarding_two_screen.dart';
import 'package:izza_auliyai_rabby_s_application3/presentation/sign_in_out_up_screen/sign_in_out_up_screen.dart';
import 'package:izza_auliyai_rabby_s_application3/presentation/details_two_container_screen/details_two_container_screen.dart';
import 'package:izza_auliyai_rabby_s_application3/presentation/details_one_screen/details_one_screen.dart';
import 'package:izza_auliyai_rabby_s_application3/presentation/home_one_screen/home_one_screen.dart';
import 'package:izza_auliyai_rabby_s_application3/presentation/home_screen/home_screen.dart';
import 'package:izza_auliyai_rabby_s_application3/presentation/home_two_screen/home_two_screen.dart';
import 'package:izza_auliyai_rabby_s_application3/presentation/home_three_screen/home_three_screen.dart';
import 'package:izza_auliyai_rabby_s_application3/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String detailsScreen = '/details_screen';

  static const String onboardingScreen = '/onboarding_screen';

  static const String onboardingOneScreen = '/onboarding_one_screen';

  static const String onboardingTwoScreen = '/onboarding_two_screen';

  static const String signInOutUpScreen = '/sign_in_out_up_screen';

  static const String detailsTwoPage = '/details_two_page';

  static const String detailsTwoContainerScreen =
      '/details_two_container_screen';

  static const String detailsOneScreen = '/details_one_screen';

  static const String homeOneScreen = '/home_one_screen';

  static const String homeScreen = '/home_screen';

  static const String homeTwoScreen = '/home_two_screen';

  static const String homeThreeScreen = '/home_three_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        detailsScreen: DetailsScreen.builder,
        onboardingScreen: OnboardingScreen.builder,
        onboardingOneScreen: OnboardingOneScreen.builder,
        onboardingTwoScreen: OnboardingTwoScreen.builder,
        signInOutUpScreen: SignInOutUpScreen.builder,
        detailsTwoContainerScreen: DetailsTwoContainerScreen.builder,
        detailsOneScreen: DetailsOneScreen.builder,
        homeOneScreen: HomeOneScreen.builder,
        homeScreen: HomeScreen.builder,
        homeTwoScreen: HomeTwoScreen.builder,
        homeThreeScreen: HomeThreeScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: DetailsScreen.builder
      };
}
