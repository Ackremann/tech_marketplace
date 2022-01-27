part of '../view.dart';

class _ProductImgaeIndicator extends StatelessWidget {
  const _ProductImgaeIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: AnimatedPageIndicator(
          activeDotHeight: 10,
          activeDotWidth: 10,
          currentPage: 0,
          numPages: 3,
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
      ),
    );
  }
}
