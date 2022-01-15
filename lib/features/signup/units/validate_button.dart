part of '../view.dart';

class _ValidateButton extends StatelessWidget {
  const _ValidateButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WhiteButton(
      text: 'Validate',
      onPressed: () {},
      size: Size(sizeFromWidth(context, 1.5), 40),
    );
  }
}
