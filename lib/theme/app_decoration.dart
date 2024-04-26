import 'package:flutter/material.dart';
import '../core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray200,
      );
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
      );
// Gradient decorations
  static BoxDecoration get gradientBlueToBlue => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(1.19, -0.03),
          end: Alignment(0.18, 0.88),
          colors: [appTheme.blue200, appTheme.blue600],
        ),
      );
  static BoxDecoration get gradientLightBlueToBlue => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(1.19, -0.03),
          end: Alignment(0.18, 0.88),
          colors: [appTheme.lightBlue200, appTheme.blue600],
        ),
      );
  static BoxDecoration get gradientLightBlueToLightBlue => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.89, 0.19),
          end: Alignment(0.25, 0.84),
          colors: [appTheme.lightBlue100, appTheme.lightBlue800],
        ),
      );
  static BoxDecoration get gradientWhiteAToLightBlue => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [appTheme.whiteA700, appTheme.lightBlue30001],
        ),
      );
// Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: appTheme.gray200,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.1),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              -2,
              -2,
            ),
          )
        ],
      );
}

class BorderRadiusStyle {
  // Rounded borders
  static BorderRadius get customBorderTL40 => BorderRadius.vertical(
        top: Radius.circular(40.h),
      );
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
      );
}
