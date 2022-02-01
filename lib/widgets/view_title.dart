import 'package:flutter/material.dart';

class ViewTitle extends StatelessWidget {
  const ViewTitle({
    Key? key,
    required this.title,
    this.padding = 15,
  }) : super(key: key);
  final String title;

  final double padding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding),
      child: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .headline4!
            .copyWith(fontWeight: FontWeight.bold, fontSize: 26),
      ),
    );
  }
}
