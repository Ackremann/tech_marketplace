import 'package:flutter/material.dart';

class CheckCircleCard extends StatelessWidget {
  const CheckCircleCard({
    required this.title,
    required this.leading,
    this.elevation = 0.5,
    required this.onTap,
    Key? key,
    
  }) : super(key: key);

  final double elevation;
  final String title;
  final Widget leading;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Card(
      
      elevation: elevation,
      child: ListTile(
        onTap: onTap,
        horizontalTitleGap: 0,
        leading: leading,
        title: Text(title),
      ),
    );
  }
}
