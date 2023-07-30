import 'package:flutter/material.dart';
import 'package:motto_help/constants/app_spacing.dart';

import '../../constants/app_colors.dart';
import '../../utils/app_navigation.dart';
import '../registeration/login.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      AppNavigations.off(
        context,
        nextScreen: const Login(),
      );
    });
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Padding(
        padding: AppSpacing.defaultPaddingAll,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
         children: [
          Image.asset("assets/images/logo.png")
         ],
        ),
      ),
    );
  }
}
