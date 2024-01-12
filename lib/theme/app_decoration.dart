import 'package:flutter/material.dart';
import 'package:izza_auliyai_rabby_s_application3/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray10001,
      );
  static BoxDecoration get fillBluegray30001 => BoxDecoration(
        color: appTheme.blueGray30001,
      );
  static BoxDecoration get fillDeepPurple => BoxDecoration(
        color: appTheme.deepPurple300,
      );
  static BoxDecoration get fillDeepPurpleA => BoxDecoration(
        color: appTheme.deepPurpleA40001,
      );
  static BoxDecoration get fillDeeppurple30001 => BoxDecoration(
        color: appTheme.deepPurple30001,
      );
  static BoxDecoration get fillDeeppurpleA70001 => BoxDecoration(
        color: appTheme.deepPurpleA70001,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray90002,
      );
  static BoxDecoration get fillIndigo => BoxDecoration(
        color: appTheme.indigo300,
      );
  static BoxDecoration get fillIndigoA => BoxDecoration(
        color: appTheme.indigoA100,
      );
  static BoxDecoration get fillOnError => BoxDecoration(
        color: theme.colorScheme.onError,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );

  // Gradient decorations
  static BoxDecoration get gradientGrayToGray => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.gray90002.withOpacity(0),
            appTheme.gray90001,
          ],
        ),
      );
  static BoxDecoration get gradientOnErrorContainerToBlueGray => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            theme.colorScheme.onErrorContainer,
            appTheme.blueGray90001,
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: appTheme.black900.withOpacity(0.15),
        border: Border.all(
          color: appTheme.black900.withOpacity(0.4),
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineDeepPurpleA => BoxDecoration(
        border: Border.all(
          color: appTheme.deepPurpleA70001,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineErrorContainer => BoxDecoration(
        color: theme.colorScheme.onPrimary,
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        color: appTheme.gray90002,
        border: Border.all(
          color: appTheme.gray100,
          width: 4.h,
          strokeAlign: strokeAlignOutside,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              28,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlinePrimaryContainer => BoxDecoration(
        color: appTheme.blueGray900,
        border: Border.all(
          color: theme.colorScheme.primaryContainer,
          width: 1.h,
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder16 => BorderRadius.circular(
        16.h,
      );
  static BorderRadius get circleBorder26 => BorderRadius.circular(
        26.h,
      );
  static BorderRadius get circleBorder7 => BorderRadius.circular(
        7.h,
      );

  // Rounded borders
  static BorderRadius get roundedBorder22 => BorderRadius.circular(
        22.h,
      );
  static BorderRadius get roundedBorder3 => BorderRadius.circular(
        3.h,
      );
  static BorderRadius get roundedBorder30 => BorderRadius.circular(
        30.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
