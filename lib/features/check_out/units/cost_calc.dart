part of '../view.dart';

class _CostCalc extends StatelessWidget {
  const _CostCalc({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        CostRow(
          startTitle: 'Cost :',
          endTitle: 'USD 500',
        ),
        CostRow(
          startTitle: 'Taxes :',
          endTitle: 'USD 500',
        ),
        CostRow(
          startTitle: 'Discount :',
          endTitle: 'USD 500',
          color: Colors.red,
        ),
        CostRow(
          startTitle: 'Total :',
          endTitle: 'USD 500',
          padding: EdgeInsets.all(20),
        ),
      ],
    );
  }
}

class CostRow extends StatelessWidget {
  const CostRow({
    required this.startTitle,
    required this.endTitle,
    this.padding = const EdgeInsets.all(8.0),
    this.color = const Color(0xff0001FC),
    Key? key,
  }) : super(key: key);
  final String startTitle;
  final String endTitle;
  final EdgeInsetsGeometry padding;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            startTitle,
            style: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(fontWeight: FontWeight.w500),
          ),
          Text(
            endTitle,
            style: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(color: color, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
