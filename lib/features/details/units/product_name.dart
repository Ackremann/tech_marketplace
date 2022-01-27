part of '../view.dart';

class _ProductName extends StatelessWidget {
  const _ProductName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Home',
      style: Theme.of(context)
          .textTheme
          .headline4!
          .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
    );
  }
}
