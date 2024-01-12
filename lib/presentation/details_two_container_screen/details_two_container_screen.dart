import 'bloc/details_two_container_bloc.dart';
import 'models/details_two_container_model.dart';
import 'package:flutter/material.dart';
import 'package:izza_auliyai_rabby_s_application3/core/app_export.dart';
import 'package:izza_auliyai_rabby_s_application3/presentation/details_two_page/details_two_page.dart';
import 'package:izza_auliyai_rabby_s_application3/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class DetailsTwoContainerScreen extends StatelessWidget {
  DetailsTwoContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<DetailsTwoContainerBloc>(
        create: (context) => DetailsTwoContainerBloc(DetailsTwoContainerState(
            detailsTwoContainerModelObj: DetailsTwoContainerModel()))
          ..add(DetailsTwoContainerInitialEvent()),
        child: DetailsTwoContainerScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailsTwoContainerBloc, DetailsTwoContainerState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Navigator(
                  key: navigatorKey,
                  initialRoute: AppRoutes.detailsTwoPage,
                  onGenerateRoute: (routeSetting) => PageRouteBuilder(
                      pageBuilder: (ctx, ani, ani1) =>
                          getCurrentPage(context, routeSetting.name!),
                      transitionDuration: Duration(seconds: 0))),
              bottomNavigationBar: Padding(
                  padding: EdgeInsets.only(left: 48.h, right: 29.h),
                  child: _buildBottomBar(context))));
    });
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
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
