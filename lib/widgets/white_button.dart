import 'package:flutter/material.dart';
import 'package:tech_marketplace/constant/colors.dart';

class WhiteButton extends StatelessWidget {
  const WhiteButton({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.size,
    this.elevation = 2,
  }) : super(key: key);
  final String text;
  final void Function()? onPressed;
  final Size? size;
  final double elevation;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: elevation,
        primary: Colors.white,
        onPrimary: AppColors.mainBackGroundColor,
        fixedSize: size,
      ),
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
