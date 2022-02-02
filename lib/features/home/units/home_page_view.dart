part of '../view.dart';

class _HomePageView extends StatelessWidget {
  const _HomePageView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: sizeFromHeight(context, 5),
        child: PageView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
              child: Container(
                width: sizeFromWidth(context, 1.15),
                padding: const EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Theme.of(context).primaryColor,
                ),
                child: const ListTile(
                  title: Text(
                    'Bose Home Speaker',
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    'USD 279',
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: Icon(
                    Icons.circle_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
