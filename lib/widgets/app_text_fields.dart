import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  const AppTextField(
      {Key? key,
      required this.keyboardType,
      // required this.label,
      this.hint = 'hint',
      required this.onSaved,
      required this.validator,
      this.textColor = Colors.white,
      this.backgroundColor = Colors.grey})
      : super(key: key);

  final TextInputType? keyboardType;
  // final String label;
  final String hint;

  final void Function(String?)? onSaved;
  final String? Function(String?)? validator;
  final Color? textColor;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    const errorColor = Color(0xffEF4444);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          // width: sizeFromWidth(context, 1.5),
          height: 40,
          child: TextFormField(
            onSaved: onSaved,
            validator: validator,
            keyboardType: keyboardType,
            style: TextStyle(fontSize: 12, color: textColor),
            decoration: InputDecoration(
              hintText: hint,
              // label: Text(label),
              labelStyle: TextStyle(color: textColor),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: backgroundColor, width: 1.0),
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: backgroundColor, width: 1.0),
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              ),
              errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: errorColor, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: backgroundColor, width: 1.0),
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
