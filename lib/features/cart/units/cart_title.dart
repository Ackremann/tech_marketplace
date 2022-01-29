part of '../view.dart';

class _CartTitle extends StatelessWidget {
  const _CartTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Text(
        'Shopping Cart',
        style: Theme.of(context)
            .textTheme
            .headline4!
            .copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }
}
