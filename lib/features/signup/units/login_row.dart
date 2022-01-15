part of '../view.dart';

class _LogInRow extends StatelessWidget {
  const _LogInRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButtonRow(
        buttonText: 'Login',
        text: 'Already have an account ?',
        onPressed: () {
          MagicRouter.navigateTo(const LogInview());
        });
  }
}
