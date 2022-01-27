part of '../view.dart';

class _SearchText extends StatelessWidget {
  const _SearchText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:30,right: 15,left: 15,bottom: 15),
      child: Text(
        'Search',
        style: Theme.of(context)
            .textTheme
            .headline4!
            .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }
}
