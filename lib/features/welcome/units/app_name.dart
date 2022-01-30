part of '../view.dart';

class _AppName extends StatelessWidget {
  const _AppName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'lATECH',
          style: TextStyle(fontSize: 24, color: Theme.of(context).primaryColor),
        ),
        Text(
          'TECH MARKET',
          style: TextStyle(
              color: Theme.of(context).primaryColor, letterSpacing: 6),
        ),
      ],
    );
  }
}
