import 'package:flutter/material.dart';
import 'package:tech_marketplace/constant/icons_defaults.dart';
import 'package:tech_marketplace/widgets/product_card.dart';

class CatagoriesView extends StatelessWidget {
  const CatagoriesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Catagories',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            Expanded(
              child: GridView.builder(
                itemCount: 8,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return ProductCard(
                      title: "lap",
                      subTitle: '4000',
                      image: 'assets/images/Surface laptop.png',
                      onTap: () {});
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
