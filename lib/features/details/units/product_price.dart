part of '../view.dart';

class _productPrice extends StatelessWidget {
  const _productPrice({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              'Old Price : 200 USD',
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    decoration: TextDecoration.lineThrough,
                    fontWeight: FontWeight.w300,
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Text(
              'Total Price : 180 USD',
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
