import 'package:flutter/material.dart';
import 'package:tech_marketplace/constant/icons_defaults.dart';
import 'package:tech_marketplace/core/routes/magic_router.dart';
import 'package:tech_marketplace/widgets/product_card.dart';

class CatagoriesView extends StatelessWidget {
  const CatagoriesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            backgroundColor: Colors.white,
            leading: IconButton(
              onPressed: () {
                MagicRouter.pop();
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 30,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  child: Text(
                    'Catagories',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
                GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
