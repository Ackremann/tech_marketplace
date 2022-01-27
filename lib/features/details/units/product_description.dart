part of '../view.dart';

class _ProductDescription extends StatelessWidget {
  const _ProductDescription({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Description',
          style: Theme.of(context).textTheme.headline6,
        ),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 3,
          itemBuilder: (context, index) {
            return Row(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text(
                  '.',
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 24),
                ),
                const SizedBox(width: 8),
                Text(
                  'Data',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            );
          },
        ),
        SizedBox(height: 50),
      ],
    );
  }
}
