part of '../view.dart';

class _AppName extends StatelessWidget {
  const _AppName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'LATECH',
          style: TextStyle(
              fontSize: 24,
              color: Theme.of(context).primaryColor,
              fontFamily: 'PTMono',
              letterSpacing: 2),
        ),
        Text(
          'TECH MARKET',
          style: TextStyle(
              fontFamily: 'PTMono',
              color: Theme.of(context).primaryColor,
              letterSpacing: 6),
        ),
      ],
    );
  }
}
