import 'package:flutter/material.dart';
import 'package:clean_architecture/src/core/enums.dart';
import 'package:clean_architecture/src/core/localization/app_localization.dart';

abstract class AppSharedData {
  // app opened by.
  static AppOpenedBy appOpenedBy = AppOpenedBy.user;

  // navigation key.
  static GlobalKey<NavigatorState>? navigationKey;

  // app localization.
  static late AppLocalizations appLocalization;

  // app theming.
  static late Map<String, Color> appTheming;
}
