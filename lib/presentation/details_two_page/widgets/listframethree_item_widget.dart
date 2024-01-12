import '../models/listframethree_item_model.dart';
import 'package:flutter/material.dart';
import 'package:izza_auliyai_rabby_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class ListframethreeItemWidget extends StatelessWidget {
  ListframethreeItemWidget(
    this.listframethreeItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ListframethreeItemModel listframethreeItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 95.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          width: 95.h,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 10.v,
          ),
          decoration: AppDecoration.fillDeepPurpleA.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder22,
          ),
          child: Text(
            listframethreeItemModelObj.frame!,
            style: CustomTextStyles.titleSmallPoppinsPrimary,
          ),
        ),
      ),
    );
  }
}
