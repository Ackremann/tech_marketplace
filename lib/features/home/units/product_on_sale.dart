part of '../view.dart';

class _ProductOnSaleSection extends StatelessWidget {
  const _ProductOnSaleSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 8,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) {
        return ProductCard(
            title: "lap",
            subTitle: '4000',
            image: 'assets/images/Surface laptop.png',
            onTap: () {});
      },
    );
  }
}




//  return Expanded(
//       child: GridView.builder(
//         itemCount: 8,
//         gridDelegate:
//             const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
//         itemBuilder: (context, index) {
//           return ProductCard(
//               title: "lap",
//               subTitle: '4000',
//               image: 'assets/images/Surface laptop.png',
//               onTap: () {});
//         },
//       ),
//     );