part of '../view.dart';

class _AppLogo extends StatelessWidget {
  const _AppLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: Image.asset(
        'assets/images/Logo.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
