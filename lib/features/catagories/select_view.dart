import 'package:flutter/material.dart';
import 'package:tech_marketplace/constant/icons_defaults.dart';
import 'package:tech_marketplace/core/routes/magic_router.dart';
import 'package:tech_marketplace/features/catagories/view.dart';

class CatagoriesSelectView extends StatelessWidget {
  const CatagoriesSelectView({Key? key}) : super(key: key);

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
              child: ListView.builder(
                itemCount: Defaults.catagoriesList.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onDoubleTap: () {
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
