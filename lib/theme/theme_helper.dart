// ignore_for_file: duplicate_ignore

import 'dart:ui';
import 'package:flutter/material.dart';
import '../core/app_export.dart';

String _appTheme = "primary";
PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();

/// Helper class for managing themes and colors.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ThemeHelper {
  // A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    _appTheme = _newTheme;
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: appTheme.gray200,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodySmall: TextStyle(
          color: appTheme.black900,
          fontSize: 12.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w300,
        ),
        headlineLarge: TextStyle(
          color: appTheme.gray200,
          fontSize: 30.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w700,
        ),
        headlineSmall: TextStyle(
          color: appTheme.gray200,
          fontSize: 25.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w500,
        ),
        labelLarge: TextStyle(
          color: appTheme.black900,
          fontSize: 12.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w700,
        ),
        titleLarge: TextStyle(
          color: appTheme.black900,
          fontSize: 20.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w700,
        ),
        titleSmall: TextStyle(
          color: appTheme.gray300,
          fontSize: 15.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w700,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light();
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Black
  Color get black900 => Color(0XFF000000);
// Blue
  Color get blue200 => Color(0XFF99DBFF);
  Color get blue600 => Color(0XFF1A99DE);
// BlueGray
  Color get blueGray400 => Color(0XFF888888);
// Gray
  Color get gray200 => Color(0XFFEFEFEF);
  Color get gray300 => Color(0XFFE3E3E3);
  Color get gray400 => Color(0XFFBABABA);
  Color get gray900 => Color(0XFF141414);
// LightBlue
  Color get lightBlue100 => Color(0XFFBBE7FF);
  Color get lightBlue200 => Color(0XFF70CCFF);
  Color get lightBlue300 => Color(0XFF5DC6F8);
  Color get lightBlue30001 => Color(0XFF5AC4F7);
  Color get lightBlue800 => Color(0XFF006DA9);
// White
  Color get whiteA700 => Color(0XFFFFFFFF);

  get gray800 => null;
}
