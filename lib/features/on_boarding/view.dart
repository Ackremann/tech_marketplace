import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_marketplace/constant/colors.dart';
import 'package:tech_marketplace/constant/responsive.dart';
import 'package:tech_marketplace/core/routes/magic_router.dart';
import 'package:tech_marketplace/features/home/view.dart';
import 'package:tech_marketplace/features/login/view.dart';
import 'package:tech_marketplace/features/on_boarding/cubit/onboarding_cubit.dart';
import 'package:tech_marketplace/features/signup/view.dart';
import 'package:tech_marketplace/widgets/on_boarding_indiactor.dart';

class OnBoardingView extends StatelessWidget {
  OnBoardingView({Key? key}) : super(key: key);
  // PageController controller =
  //     PageController(initialPage: 0, viewportFraction: 1);
  List onBoardingItem = [
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: Image.asset('assets/images/on_boarding1.png'),
        ),
        // const Text(
        //   'The Best Tech Market',
        //   style: TextStyle(color: Colors.white),
        // ),
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: Image.asset('assets/images/on_boarding2.png'),
        ),
        // const Text(
        //   'The Best Tech Market',
        //   style: TextStyle(color: Colors.white),
        // ),
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: Image.asset('assets/images/on_boarding3.png'),
        ),
        // const Text(
        //   'The Best Tech Market',
        //   style: TextStyle(color: Colors.white),
        // ),
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/on_boarding3.png'),
        const Text(
          'A lot of exclusives',
          style: TextStyle(color: Colors.white),
        ),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    // int position = 0;
    return BlocProvider(
      create: (context) => OnboardingCubit()..onBoardingController(),
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: sizeFromWidth(context, 1),
          decoration: BoxDecoration(
            gradient: AppColors.lightDarkGradient,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                flex: 3,
                child: BlocBuilder<OnboardingCubit, OnboardingState>(
                  builder: (context, state) {
                    final bloc = OnboardingCubit.of(context);
                    return PageView.builder(
                      controller: bloc.pageController,
                      itemCount: onBoardingItem.length,
                      onPageChanged: (value) => bloc.pagePosition = value,
                      itemBuilder: (context, index) {
                        return AnimatedBuilder(
                          animation: bloc.pageController,
                          builder: (context, child) {
                            return Center(
                              child: child,
                            );
                          },
                          child: Container(
                            child: onBoardingItem[bloc.pagePosition],
                          ),
                        );
                        ;
                      },
                    );
                  },
                ),
              ),
              Flexible(
                flex: 1,
                child: BlocBuilder<OnboardingCubit, OnboardingState>(
                  builder: (context, state) {
                    // final bloc = OnboardingCubit.of(context);
                    return AnimatedPageIndicator(
                      currentPage: 0,
                      numPages: 4,
                      gradient: LinearGradient(colors: [
                        AppColors.textAccent2,
                        Colors.white,
                      ]),
                      activeGradient: LinearGradient(colors: [
                        AppColors.textAccent2,
                        AppColors.mainBackGroundColor
                      ]),
                    );
                  },
                ),
              ),
              TextButton(
                onPressed: () {
                  MagicRouter.navigateAndPopAll(SignUpView());
                },
                child: const Text(
                  'Signup',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              TextButton(
                onPressed: () {
                  MagicRouter.navigateAndPopAll(LogInview());
                },
                child: const Text(
                  'Login',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
