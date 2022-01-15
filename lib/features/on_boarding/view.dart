import 'package:flutter/material.dart';
import 'package:tech_marketplace/constant/colors.dart';
import 'package:tech_marketplace/constant/responsive.dart';
import 'package:tech_marketplace/core/routes/magic_router.dart';
import 'package:tech_marketplace/features/home/view.dart';
import 'package:tech_marketplace/widgets/on_boarding_indiactor.dart';

class OnBoardingView extends StatelessWidget {
  OnBoardingView({Key? key}) : super(key: key);
  PageController controller =
      PageController(initialPage: 0, viewportFraction: 1);
  List onBoardingItem = [
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: Image.asset('assets/images/on_boarding1.png'),
        ),
        const Text(
          'The Best Tech Market',
          style: TextStyle(color: Colors.white),
        ),
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/on_boarding2.png'),
        const Text(
          'Sales all the time',
          style: TextStyle(color: Colors.white),
        ),
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
    int position = 0;
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
              flex: 3,
              child: PageView.builder(
                itemCount: onBoardingItem.length,
                itemBuilder: (context, index) {
                  return imageSlider(position);
                },
              ),
            ),
            Flexible(
              flex: 1,
              child: AnimatedPageIndicatorFb1(
                currentPage: 0,
                numPages: 4,
                gradient: LinearGradient(colors: [
                  Colors.blue.withOpacity(.4),
                  Colors.purple.withOpacity(.4)
                ]),
                activeGradient:
                    LinearGradient(colors: [Colors.blue, Colors.purple]),
              ),
            ),
            TextButton(
              onPressed: () {
                MagicRouter.navigateAndPopAll(HomeView());
              },
              child: Text(
                'Skip',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget imageSlider(int position) {
    return AnimatedBuilder(
      animation: controller,
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
