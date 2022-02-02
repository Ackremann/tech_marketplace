part of '../view.dart';

class _PayButton extends StatelessWidget {
  const _PayButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            fixedSize: Size(sizeFromWidth(context, 1.2), 40)),
        onPressed: () {
          Navigator.of(context).push(PageRouteBuilder(
            opaque: false,
            pageBuilder: (context, animation, secondaryAnimation) =>
                const OrderValidateView(),
          ));
        },
        child: const Text('Pay'),
      ),
    );
  }
}
