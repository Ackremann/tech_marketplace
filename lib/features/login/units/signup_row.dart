part of '../view.dart';

class _SignUpRow extends StatelessWidget {
  const _SignUpRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButtonRow(
        buttonText: 'Sign-Up',
        text: 'Don\'t have an account ?',
        onPressed: () {
          MagicRouter.navigateTo(const SignUpView());
        });
  }
}
