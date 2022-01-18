part of '../view.dart';

class _SortSection extends StatelessWidget {
  const _SortSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: sizeFromHeight(context, 5),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: IconsDefaults.sortICons.length,
        itemBuilder: (context, index) {
          return Container(
            // width: sizeFromHeight(context, 1),
            child: SortCard(
              icon: Icon(IconsDefaults.sortICons[index]),
              title: IconsDefaults.sortText[index],
            ),
          );
        },
      ),
    );
  }
}
