import 'package:flutter/material.dart';
import 'package:clean_architecture/src/core/helpers/helpers.dart';
import 'package:clean_architecture/src/core/styles/colors_constant.dart';

abstract class ThemeManager {
  // light.
  static ThemeData light() {
    return ThemeData(
      fontFamily: Helpers.getFontFamily(),
      primaryColor: ColorsConstants.mainOrange,
      colorScheme: const ColorScheme.light(
        primary: ColorsConstants.mainOrange,
      ),
    );
  }

  // dark.
  static ThemeData dark() {
    return ThemeData(
      fontFamily: Helpers.getFontFamily(),
      primaryColor: ColorsConstants.mainOrange,
      colorScheme: const ColorScheme.dark(
        primary: ColorsConstants.mainOrange,
      ),
    );
  }
}