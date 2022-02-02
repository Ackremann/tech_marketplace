part of '../view.dart';

class _StartButton extends StatelessWidget {
  const _StartButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WhiteButton(
      text: 'Create an account',
      onPressed: () {
        MagicRouter.navigateAndPopAll(const SignUpView());
      },
      size: Size(sizeFromWidth(context, 1.5), 40),
    );
  }
}
