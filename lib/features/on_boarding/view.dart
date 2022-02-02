import 'package:flutter/material.dart';
import 'package:tech_marketplace/constant/colors.dart';
import 'package:tech_marketplace/constant/responsive.dart';
import 'package:tech_marketplace/core/routes/magic_router.dart';
import 'package:tech_marketplace/features/bottom_nav/view.dart';
import 'package:tech_marketplace/features/welcome_signup_login/view.dart';
import 'package:tech_marketplace/widgets/page_indiactor.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  List onBoardingItem = [
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Image.asset(
            'assets/images/on_boarding1.png',
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            'The Best Tech Market',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ],
    ),
    Column(
      children: [
        Image.asset(
          'assets/images/on_boarding2.png',
        ),
        const Text(
          'The Best Tech Market',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        // 01002808152
      ],
    ),
    Column(
      children: [
        Image.asset(
          'assets/images/on_boarding3.png',
        ),
        const Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            'The Best Tech Market',
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
        height: double.infinity,
        width: sizeFromWidth(context, 1),
        decoration: BoxDecoration(
          gradient: AppColors.lightDarkGradient,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: sizeFromHeight(context, 1),
              height: sizeFromHeight(context, 1.2),
              child: PageView.builder(
                onPageChanged: (int position) {
                  setState(() {
                    _position = position;
                  });
                },
                controller: _pageController,
                itemCount: onBoardingItem.length,
                itemBuilder: (context, position) {
                  return onBoardingItem[position];
                },
              ),
            ),
            AnimatedPageIndicator(
              currentPage: _position,
              numPages: 3,
              gradient: LinearGradient(colors: [
                AppColors.textAccent2,
                Colors.white,
              ]),
              activeGradient: LinearGradient(colors: [
                AppColors.textAccent2,
                AppColors.mainBackGroundColor
              ]),
            ),
            TextButton(
              onPressed: () {
                _pageController.nextPage(
                    duration: const Duration(seconds: 1), curve: Curves.ease);
                if (_position == 2) {
                  MagicRouter.navigateAndPopAll(const Welcome2View());
                }
              },
              child:
                  //  _position == 2
                  //     ? const Text(
                  //         'Skip',
                  //         style: TextStyle(color: Colors.white),
                  //       )
                  //     :
                  const Text(
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
}
