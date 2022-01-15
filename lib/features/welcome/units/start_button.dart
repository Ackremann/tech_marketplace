part of '../view.dart';

class _StartButton extends StatelessWidget {
  const _StartButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WhiteButton(
      text: 'Let\'s Start',
      onPressed: () {
        MagicRouter.navigateAndPopAll(OnBoardingView());
      },
      size: Size(sizeFromWidth(context, 1.5), 40),
    );
  }
}
