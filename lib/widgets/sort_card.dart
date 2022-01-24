import 'package:flutter/material.dart';

class SortCard extends StatelessWidget {
  const SortCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  final Icon icon;
  final String title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffE0ECF8),
              ),
              child: icon,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(title),
          ],
        ),
      ),
    );
  }
}
