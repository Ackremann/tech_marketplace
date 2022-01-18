part of '../view.dart';

class _ProductOnSaleSection extends StatelessWidget {
  const _ProductOnSaleSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: sizeFromHeight(context, 2.5),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          ProductCard(
              title: "lap",
              subTitle: '4000',
              image: 'assets/images/Surface laptop.png',
              onTap: () {}),
          ProductCard(
            title: "lap agmed",
            subTitle: '4001',
            image: 'assets/images/Surface laptop.png',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
