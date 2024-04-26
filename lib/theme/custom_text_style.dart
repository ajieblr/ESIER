import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension on TextStyle {
  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }
}

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.
class CustomTextStyles {
  // Body text style
  static get bodySmall10 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 10.fSize,
      );
  static get bodySmall8 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 8.fSize,
      );
  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900.withOpacity(0.5),
      );
  static get bodySmallBlack800 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
      );
  static get bodySmallGray200 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray200,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallGray300 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray300,
        fontSize: 10.fSize,
      );
  static get bodySmallGray3008 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray300,
        fontSize: 8.fSize,
      );
// Label text style
  static get labelLargeBlack900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.5),
        fontWeight: FontWeight.w600,
      );
  static get labelLargeGray200 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray200,
        fontWeight: FontWeight.w500,
      );
  static get labellargeOnPrimaryContainer => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w500,
      );
// Title text style
  static get titleLargeMedium => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleLargeWhiteA700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleSmallWhiteA700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeOnPrimary => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeOnPrimaryWhite => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w500,
      );
}
