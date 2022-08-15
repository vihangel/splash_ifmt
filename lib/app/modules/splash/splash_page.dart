import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:splash_ifmt/app/shared/app_colors.dart';
import 'package:splash_ifmt/app/shared/auth/auth_controller.dart';

import '../../shared/app_images.dart';

final authController = Modular.get<AuthController>();

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    authController.currentUser(context);
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: [
          Center(
            child: Image.asset(
              AppImages.logoIF,
              scale: 1.8,
            ),
          ),
        ],
      ),
    );
  }
}
