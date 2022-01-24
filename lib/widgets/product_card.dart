import 'package:flutter/material.dart';
import 'package:tech_marketplace/constant/responsive.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final String subTitle;

  final String image;
  final Function() onTap;
  // final bool selected;
  const ProductCard(
      {required this.title,
      required this.image,
      required this.onTap,
      required this.subTitle,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey[100],
          ),
          width: sizeFromWidth(context, 2.5),
          child: Column(
            children: [
              Flexible(
                flex: 4,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      image,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                title,
                style: const TextStyle(fontSize: 16, color: Colors.black),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                subTitle,
                style: TextStyle(fontSize: 12, color: Colors.indigo[900]),
                textAlign: TextAlign.left,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
