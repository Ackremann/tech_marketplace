part of '../view.dart';

class _SkipButton extends StatelessWidget {
  const _SkipButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: const Text(
        'Skip For Now',
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () {
        MagicRouter.navigateAndPopAll(const BottomNavView());
      },
    );
  }
}
