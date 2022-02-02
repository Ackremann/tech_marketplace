part of '../view.dart';

class _LoginButtonRow extends StatelessWidget {
  const _LoginButtonRow({
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
