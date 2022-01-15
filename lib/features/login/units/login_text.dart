part of '../view.dart';

class _LogInText extends StatelessWidget {
  const _LogInText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: sizeFromHeight(context, 9),
      ),
      child: const Text(
        'Login',
        style: TextStyle(fontSize: 24, color: Colors.white),
      ),
    );
  }
}
