part of '../view.dart';

class _OrderButton extends StatelessWidget {
  const _OrderButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            fixedSize: Size(sizeFromWidth(context, 1.2), 40)),
        onPressed: () {
          MagicRouter.navigateTo(const CreditCardView());
        },
        child: const Text('Complete Order'),
      ),
    );
  }
}
