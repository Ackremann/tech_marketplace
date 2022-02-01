import 'package:flutter/material.dart';
import 'package:tech_marketplace/constant/icons_defaults.dart';
import 'package:tech_marketplace/constant/responsive.dart';
import 'package:tech_marketplace/widgets/view_title.dart';
part 'units/cart_title.dart';

class CartView extends StatelessWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              const SliverAppBar(
                title: _CartTitle(),
              ),
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    ListView.builder(
                      itemCount: Defaults.favoriteItem.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Dismissible(
                          key: ValueKey(Defaults.favoriteItem),
                          direction: DismissDirection.startToEnd,
                          background: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Text(
                                  'Remove',
                                  style: TextStyle(color: Colors.red),
                                ),
                              ],
                            ),
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: sizeFromWidth(context, 1.3),
                                margin: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Colors.grey.shade300),
                                    // color: Colors.grey[100],
                                    borderRadius: BorderRadius.circular(10)),
                                child: ListTile(
                                  contentPadding: const EdgeInsets.all(8),
                                  leading: Image.asset(Defaults
                                      .favoriteItem[index]['image']
                                      .toString()),
                                  title: Text(
                                    Defaults.favoriteItem[index]['name']
                                        .toString(),
                                    // style: TextStyle(
                                    //     color: Theme.of(context).primaryColor),
                                  ),
                                  subtitle: Text(
                                    Defaults.favoriteItem[index]['price']
                                        .toString(),
                                    style: TextStyle(
                                        color: Theme.of(context).primaryColor),
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon:
                                        Icon(Icons.add_circle_outline_rounded),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        color: Colors.grey[200],
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(5))),
                                    child: Text(
                                      'x1',
                                      style: TextStyle(
                                          color:
                                              Theme.of(context).primaryColor),
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                        Icons.remove_circle_outline_rounded),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    SizedBox(
                      height: 200,
                    )
                  ],
                ),
              )
            ],
          ),
          Positioned(
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                      top: BorderSide(
                    color: Colors.grey.shade100,
                    width: 2,
                  ))),
              width: sizeFromWidth(context, 1),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text('Total'), Text('USD 1248')],
                    ),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          fixedSize: Size(sizeFromWidth(context, 1.2), 40)),
                      onPressed: () {},
                      child: Text('Complete Order'))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
