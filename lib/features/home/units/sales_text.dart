part of '../view.dart';

class _SaleText extends StatelessWidget {
  const _SaleText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Sale',
        style: Theme.of(context)
            .textTheme
            .headline5!
            .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }
}
