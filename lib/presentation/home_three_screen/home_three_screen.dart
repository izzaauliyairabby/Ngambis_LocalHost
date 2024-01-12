import '../home_three_screen/widgets/userprofilelist1_item_widget.dart';
import 'bloc/home_three_bloc.dart';
import 'models/home_three_model.dart';
import 'models/userprofilelist1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:izza_auliyai_rabby_s_application3/core/app_export.dart';
import 'package:izza_auliyai_rabby_s_application3/presentation/details_two_page/details_two_page.dart';
import 'package:izza_auliyai_rabby_s_application3/widgets/custom_bottom_bar.dart';
import 'package:izza_auliyai_rabby_s_application3/widgets/custom_radio_button.dart';
import 'package:izza_auliyai_rabby_s_application3/widgets/custom_search_view.dart';

class HomeThreeScreen extends StatelessWidget {
  HomeThreeScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeThreeBloc>(
      create: (context) => HomeThreeBloc(HomeThreeState(
        homeThreeModelObj: HomeThreeModel(),
      ))
        ..add(HomeThreeInitialEvent()),
      child: HomeThreeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 50.v),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: 28.v,
                  width: 224.h,
                  margin: EdgeInsets.only(right: 40.h),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgEdit,
                        height: 24.v,
                        width: 25.h,
                        alignment: Alignment.topRight,
                        margin: EdgeInsets.only(right: 40.h),
                      ),
                      _buildMessagesRadio(context),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 21.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 38.h,
                  right: 40.h,
                ),
                child: BlocSelector<HomeThreeBloc, HomeThreeState,
                    TextEditingController?>(
                  selector: (state) => state.searchController,
                  builder: (context, searchController) {
                    return CustomSearchView(
                      controller: searchController,
                      hintText: "lbl_search_message".tr,
                      contentPadding: EdgeInsets.only(
                        top: 15.v,
                        right: 30.h,
                        bottom: 15.v,
                      ),
                      borderDecoration: SearchViewStyleHelper.outlineIndigoD,
                      fillColor: theme.colorScheme.primary,
                    );
                  },
                ),
              ),
              SizedBox(height: 35.v),
              SizedBox(
                height: 747.v,
                width: 426.h,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    _buildUserProfileList(context),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 206.v,
                        width: 426.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            30.h,
                          ),
                          gradient: LinearGradient(
                            begin: Alignment(0.5, -0.19),
                            end: Alignment(0.5, 0.81),
                            colors: [
                              appTheme.gray90002.withOpacity(0),
                              appTheme.gray90001,
                            ],
                          ),
                        ),
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
            left: 45.h,
            right: 32.h,
          ),
          child: _buildBottomBar(context),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMessagesRadio(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: BlocSelector<HomeThreeBloc, HomeThreeState, String?>(
        selector: (state) => state.radioGroup,
        builder: (context, radioGroup) {
          return CustomRadioButton(
            width: 224.h,
            text: "lbl_messages".tr,
            value: "lbl_messages".tr,
            groupValue: radioGroup,
            isRightCheck: true,
            onChange: (value) {
              context
                  .read<HomeThreeBloc>()
                  .add(ChangeRadioButtonEvent(value: value));
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfileList(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 37.h,
          right: 37.h,
          bottom: 56.v,
        ),
        child: BlocSelector<HomeThreeBloc, HomeThreeState, HomeThreeModel?>(
          selector: (state) => state.homeThreeModelObj,
          builder: (context, homeThreeModelObj) {
            return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 30.v,
                );
              },
              itemCount:
                  homeThreeModelObj?.userprofilelist1ItemList.length ?? 0,
              itemBuilder: (context, index) {
                Userprofilelist1ItemModel model =
                    homeThreeModelObj?.userprofilelist1ItemList[index] ??
                        Userprofilelist1ItemModel();
                return Userprofilelist1ItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
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
