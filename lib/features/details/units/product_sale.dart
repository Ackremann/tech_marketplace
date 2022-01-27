part of '../view.dart';

class _ProductSaleAmount extends StatelessWidget {
  const _ProductSaleAmount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Text(
        'Sale% Off',
        style: Theme.of(context).textTheme.subtitle1!.copyWith(
              backgroundColor: Colors.blueGrey[100],
              color: Theme.of(context).primaryColor,
            ),
      ),
    );
  }
}
