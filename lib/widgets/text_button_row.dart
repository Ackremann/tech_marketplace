import 'package:flutter/material.dart';
import 'package:tech_marketplace/constant/colors.dart';

class TextButtonRow extends StatelessWidget {
  const TextButtonRow({
    Key? key,
    required this.buttonText,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  final void Function()? onPressed;
  final String text;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            buttonText,
            style: TextStyle(color: AppColors.textAccent1),
          ),
        ),
      ],
    );
  }
}
