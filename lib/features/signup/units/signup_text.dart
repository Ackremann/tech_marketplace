part of '../view.dart';

class _SignUpText extends StatelessWidget {
  const _SignUpText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: sizeFromHeight(context, 10),
      ),
      child: const Text(
        'Create an account',
        style: TextStyle(fontSize: 18, color: Colors.white),
      ),
    );
  }
}
