import 'package:flutter/material.dart';
import 'package:tech_marketplace/constant/icons_defaults.dart';
import 'package:tech_marketplace/core/routes/magic_router.dart';
import 'package:tech_marketplace/features/catagories/view.dart';

class CatagoriesSelectView extends StatelessWidget {
  const CatagoriesSelectView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: Defaults.catagoriesList.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          MagicRouter.navigateTo(CatagoriesView());
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 10),
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.grey[50],
                          ),
                          child: Text(
                            Defaults.catagoriesList[index],
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
