part of '../view.dart';

class _SortSection extends StatelessWidget {
  const _SortSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SortCard(
            icon: Icon(Defaults.sortICons[0]),
            title: Defaults.sortText[0],
            onTap: () {
              MagicRouter.navigateTo(CatagoriesSelectView());
            },
          ),
          SortCard(
            icon: Icon(Defaults.sortICons[1]),
            title: Defaults.sortText[1],
            onTap: () {},
          ),
        ],
      ),
    );
  }
}





/*

dunamiv
 Container(
      height: sizeFromHeight(context, 5),
      child: Center(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: IconsDefaults.sortICons.length,
          itemBuilder: (context, index) {
            return SortCard(
              icon: Icon(IconsDefaults.sortICons[index]),
              title: IconsDefaults.sortText[index],
            );
          },
        ),
      ),
    );
*/