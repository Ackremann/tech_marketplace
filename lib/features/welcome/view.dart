import 'package:flutter/material.dart';
import 'package:tech_marketplace/constant/colors.dart';
import 'package:tech_marketplace/constant/responsive.dart';
import 'package:tech_marketplace/core/routes/magic_router.dart';
import 'package:tech_marketplace/features/bottom_nav/view.dart';
import 'package:tech_marketplace/features/home/view.dart';
import 'package:tech_marketplace/features/on_boarding/view.dart';
import 'package:tech_marketplace/widgets/white_button.dart';
part 'units/app_name.dart';
part 'units/app_logo.dart';
part 'units/start_button.dart';
part 'units/skip_button.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: sizeFromWidth(context, 1),
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: AppColors.lightDarkGradient),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              _AppName(),
              _AppLogo(),
              _StartButton(),
              _SkipButton(),
            ],
          ),
        ),
      ),
    );
  }
}
