import 'package:flutter/material.dart';
import 'package:tech_marketplace/constant/colors.dart';
import 'package:tech_marketplace/constant/responsive.dart';
import 'package:tech_marketplace/core/routes/magic_router.dart';
import 'package:tech_marketplace/features/home/view.dart';
import 'package:tech_marketplace/features/on_boarding/view.dart';
import 'package:tech_marketplace/widgets/validate_button.dart';

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
            children: [
              const Text(
                'lATECH',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              const Text(
                'TECH MARKET',
                style: TextStyle(color: Colors.white, letterSpacing: 6),
              ),
              SizedBox(
                height: sizeFromHeight(context, 1.5),
                child: Image.asset(
                  'assets/images/Logo.png',
                  fit: BoxFit.contain,
                ),
              ),
              ValidateButton(
                text: 'Let\'s Start',
                onPressed: () {},
                size: Size(sizeFromWidth(context, 1.5), 40),
              ),
              TextButton(
                child: const Text(
                  'Skip For Now',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  MagicRouter.navigateAndPopAll(const HomeView());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
