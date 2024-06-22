import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:clean_architecture/src/app/presentation/screens/splash_screen/splash_screen_controller.dart';
import 'package:clean_architecture/src/core/assets/assets_constants.dart';
import 'package:clean_architecture/src/core/di/dependency_injection.dart';
import 'package:clean_architecture/src/extra/shared_pref/shared_pref_manager.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<SplashScreenController>();
    final SharedPrefManager sharedPrefManager =
        DependencyInjection.get<SharedPrefManager>();
    ////////////////////////////////////////////////////////////////////////////////////////////////////////
    return Scaffold(
      body: Center(
          // child: Image.asset(
          //   sharedPrefManager.isDarkModeEnabled()
          //       ? AssetsConstants.logoDarkImage
          //       : AssetsConstants.logoImage,
          //   width: 200.w,
          // ),
          ),
    );
  }
}
