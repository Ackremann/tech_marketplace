import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_marketplace/constant/colors.dart';
import 'package:tech_marketplace/constant/responsive.dart';
import 'package:tech_marketplace/core/routes/magic_router.dart';
import 'package:tech_marketplace/features/bottom_nav/view.dart';
import 'package:tech_marketplace/features/home/view.dart';
import 'package:tech_marketplace/features/login/view.dart';
import 'package:tech_marketplace/features/on_boarding/cubit/onboarding_cubit.dart';
import 'package:tech_marketplace/features/signup/view.dart';
import 'package:tech_marketplace/widgets/page_indiactor.dart';

class OnBoardingView extends StatefulWidget {
  OnBoardingView({Key? key}) : super(key: key);

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  List onBoardingItem = [
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/on_boarding1.png',
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            'The Best Tech Market',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/on_boarding2.png',
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: const Text(
            'The Best Tech Market',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        // 01002808152
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/on_boarding3.png',
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: const Text(
            'The Best Tech Market',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/on_boarding3.png',
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: const Text(
            'A lot of exclusives',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ],
    ),
  ];

  late PageController _pageController;
  int _position = 0;
  late int _page_position;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0, viewportFraction: 1);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              flex: 6,
              child: PageView.builder(
                onPageChanged: (int position) {
                  setState(() {
                    _position = position;
                  });
                },
                controller: _pageController,
                itemCount: onBoardingItem.length,
                itemBuilder: (context, position) {
                  return imageSlider(position);
                },
              ),
            ),
            Flexible(
              flex: 1,
              child: AnimatedPageIndicator(
                currentPage: _position,
                numPages: 4,
                gradient: LinearGradient(colors: [
                  AppColors.textAccent2,
                  Colors.white,
                ]),
                activeGradient: LinearGradient(colors: [
                  AppColors.textAccent2,
                  AppColors.mainBackGroundColor
                ]),
              ),
            ),
            TextButton(
              onPressed: () {
                _pageController.nextPage(
                    duration: Duration(seconds: 1), curve: Curves.ease);
                if (_position == 3) {
                  MagicRouter.navigateAndPopAll(BottomNavView());
                }
              },
              child: _position == 3
                  ? Text(
                      'Skip',
                      style: TextStyle(color: Colors.white),
                    )
                  : Text(
                      'Next',
                      style: TextStyle(color: Colors.white),
                    ),
            ),

            //
            // TextButton(
            //   onPressed: () {
            //     MagicRouter.navigateAndPopAll(LogInview());
            //   },
            //   child: const Text(
            //     'Login',
            //     style: TextStyle(color: Colors.white),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  Widget imageSlider(int position) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (context, child) {
        return Center(
          child: child,
        );
      },
      child: Container(
        child: onBoardingItem[position],
      ),
    );
  }
}
