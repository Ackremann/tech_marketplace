import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tech_marketplace/constant/colors.dart';
import 'package:tech_marketplace/constant/responsive.dart';
import 'package:tech_marketplace/core/routes/magic_router.dart';
import 'package:tech_marketplace/features/welcome/view.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    splashNavigate();
  }

  Future<void> splashNavigate() async {
    Timer(
      const Duration(seconds: 3),
      () => MagicRouter.navigateAndPopAll(
        const WelcomeView(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBackGroundColor,
      body: Container(
        width: sizeFromWidth(context, 1),
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: AppColors.lightDarkGradient),
        child: Center(
          child: Image.asset('assets/images/Logo.png'),
        ),
      ),
    );
  }
}
