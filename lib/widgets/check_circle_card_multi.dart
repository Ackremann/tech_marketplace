import 'package:flutter/material.dart';

class CheckCircleCardMulti extends StatelessWidget {
  const CheckCircleCardMulti({
    required this.title,
    required this.leading,
    this.elevation = 0.5,
    required this.onTap,
    required this.onTaRemove,
    required this.onTapAdd,
    Key? key,
  }) : super(key: key);
  final double elevation;
  final String title;
  final Widget leading;
  final void Function()? onTap;
  final void Function()? onTapAdd;
  final void Function()? onTaRemove;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child: ListTile(
        onTap: onTap,
        horizontalTitleGap: 0,
        leading: leading,
        title: Text(title),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
                onPressed: onTapAdd,
                icon: Icon(
                  Icons.add,
                  color: Colors.green,
                )),
            IconButton(
                onPressed: onTaRemove,
                icon: Icon(
                  Icons.remove,
                  color: Colors.red,
                )),
          ],
        ),
      ),
    );
  }
}
