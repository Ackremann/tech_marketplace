import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:tech_marketplace/constant/icons_defaults.dart';
import 'package:tech_marketplace/core/routes/magic_router.dart';
import 'package:tech_marketplace/widgets/view_title.dart';
part 'units/favorite_title.dart';

class FavoriteVeiw extends StatelessWidget {
  const FavoriteVeiw({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
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
                const _FavoriteTitle(),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.all(8),
                  itemCount: Defaults.favoriteItem.length,
                  itemBuilder: (context, index) {
                    return Dismissible(
                      key: ValueKey(Defaults.favoriteItem),
                      direction: DismissDirection.endToStart,
                      background: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Text(
                              'Remove',
                              style: TextStyle(color: Colors.red),
                            ),
                          ],
                        ),
                      ),
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(20)),
                        child: ListTile(
                          contentPadding: const EdgeInsets.all(8),
                          leading: Image.asset(
                              Defaults.favoriteItem[index]['image'].toString()),
                          title: Text(
                            Defaults.favoriteItem[index]['name'].toString(),
                            // style: TextStyle(
                            //     color: Theme.of(context).primaryColor),
                          ),
                          subtitle: Text(
                              Defaults.favoriteItem[index]['price'].toString(),style: TextStyle(
                                color: Theme.of(context).primaryColor),),
                        ),
                      ),
                    );
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
    ;
  }
}
