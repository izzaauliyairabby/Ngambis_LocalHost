import '../models/framesixteen_item_model.dart';
import 'package:flutter/material.dart';
import 'package:izza_auliyai_rabby_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class FramesixteenItemWidget extends StatelessWidget {
  FramesixteenItemWidget(
    this.framesixteenItemModelObj, {
    Key? key,
    this.onSelectedChipView,
  }) : super(
          key: key,
        );

  FramesixteenItemModel framesixteenItemModelObj;

  Function(bool)? onSelectedChipView;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.only(
        top: 4.v,
        right: 12.h,
        bottom: 4.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        framesixteenItemModelObj.locationonwhitedpOne!,
        style: TextStyle(
          color: appTheme.black900,
          fontSize: 13.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
      ),
      avatar: CustomImageView(
        imagePath: ImageConstant.imgLocationOnWhite24dp,
        height: 16.adaptSize,
        width: 16.adaptSize,
        margin: EdgeInsets.only(right: 4.h),
      ),
      selected: (framesixteenItemModelObj.isSelected ?? false),
      backgroundColor: appTheme.black900.withOpacity(0.15),
      selectedColor: appTheme.black900.withOpacity(0.15),
      shape: (framesixteenItemModelObj.isSelected ?? false)
          ? RoundedRectangleBorder(
              side: BorderSide(
                color: appTheme.black900.withOpacity(0.6),
                width: 1.h,
              ),
              borderRadius: BorderRadius.circular(
                14.h,
              ),
            )
          : RoundedRectangleBorder(
              side: BorderSide(
                color: appTheme.black900.withOpacity(0.4),
                width: 1.h,
              ),
              borderRadius: BorderRadius.circular(
                14.h,
              ),
            ),
      onSelected: (value) {
        onSelectedChipView?.call(value);
      },
    );
  }
}
