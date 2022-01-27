part of '../view.dart';

class _ProductImage extends StatelessWidget {
  const _ProductImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: sizeFromHeight(context, 3),
        child: PageView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Image.asset(
                'assets/images/Surface laptop.png',
                fit: BoxFit.contain,
              ),
            );
          },
        ),
      ),
    );
  }
}
