part of '../view.dart';

class _HomePageViewIndicator extends StatelessWidget {
  const _HomePageViewIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedPageIndicator(
        activeDotHeight: 10,
        activeDotWidth: 10,
        currentPage: 0,
        numPages: 4,
        gradient: LinearGradient(
          colors: [
            AppColors.textAccent2,
            Colors.white,
          ],
        ),
        activeGradient: LinearGradient(
          colors: [AppColors.textAccent2, AppColors.mainBackGroundColor],
        ),
      ),
    );
  }
}
