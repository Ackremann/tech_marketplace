part of'../view.dart';
class _Address extends StatelessWidget {
  const _Address({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            'Address',
            style:
                Theme.of(context).textTheme.headline6!.copyWith(fontSize: 18),
          ),
        ),
        CheckCircleCardMulti(
          leading: const Icon(
            Icons.circle_outlined,
          ),
          title: 'Work',
          onTapAdd: () {},
          onTaRemove: () {},
          onTap: () {},
        ),
        CheckCircleCardMulti(
          leading: const Icon(
            Icons.circle_outlined,
          ),
          title: 'Home',
          onTapAdd: () {},
          onTaRemove: () {},
          onTap: () {},
        ),
        CheckCircleCardMulti(
          leading: const Icon(
            Icons.circle_outlined,
          ),
          title: 'Cafe',
          onTapAdd: () {},
          onTaRemove: () {},
          onTap: () {},
        ),
      ],
    );
  }
}