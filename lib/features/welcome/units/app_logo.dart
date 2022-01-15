part of'../view.dart';
class _AppLogo extends StatelessWidget {
  const _AppLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: sizeFromHeight(context, 1.5),
      child: Image.asset(
        'assets/images/Logo.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
