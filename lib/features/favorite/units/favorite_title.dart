part of '../view.dart';

class _FavoriteTitle extends StatelessWidget {
  const _FavoriteTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Text(
        'Favorite',
        style: Theme.of(context)
            .textTheme
            .headline4!
            .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }
}
