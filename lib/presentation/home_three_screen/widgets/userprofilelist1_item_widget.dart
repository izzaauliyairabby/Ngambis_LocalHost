import '../models/userprofilelist1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:izza_auliyai_rabby_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class Userprofilelist1ItemWidget extends StatelessWidget {
  Userprofilelist1ItemWidget(
    this.userprofilelist1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofilelist1ItemModel userprofilelist1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: userprofilelist1ItemModelObj?.userImage,
                  height: 50.v,
                  width: 52.h,
                  radius: BorderRadius.circular(
                    26.h,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 15.h,
                    top: 6.v,
                    bottom: 3.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        userprofilelist1ItemModelObj.userName!,
                        style: theme.textTheme.titleSmall,
                      ),
                      SizedBox(height: 5.v),
                      Text(
                        userprofilelist1ItemModelObj.userDescription!,
                        style: CustomTextStyles.labelLargeDMSansBluegray700,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 40.h,
              top: 8.v,
              bottom: 5.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  userprofilelist1ItemModelObj.timeAgo!,
                  style: theme.textTheme.bodySmall,
                ),
                SizedBox(height: 6.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: 14.adaptSize,
                    padding: EdgeInsets.symmetric(
                      horizontal: 4.h,
                      vertical: 1.v,
                    ),
                    decoration: AppDecoration.fillDeepPurpleA.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder7,
                    ),
                    child: Text(
                      userprofilelist1ItemModelObj.newMessageCount!,
                      style: CustomTextStyles.labelSmallPrimary,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
