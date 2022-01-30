part of'../view.dart';
class _PaymentMethod extends StatelessWidget {
  const _PaymentMethod({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Payment Method',
          style: Theme.of(context).textTheme.headline6!.copyWith(fontSize: 18),
        ),
        CheckCircleCard(
          onTap: () {},
          title: 'Cash',
          leading: const Icon(
            Icons.circle_outlined,
          ),
        ),
        CheckCircleCard(
          onTap: () {},
          title: 'Credit Card',
          leading: const Icon(
            Icons.circle_outlined,
          ),
        ),
      ],
    );
  }
}