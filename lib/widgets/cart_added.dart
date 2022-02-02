import 'package:flutter/material.dart';
import 'package:tech_marketplace/constant/responsive.dart';
import 'package:tech_marketplace/core/routes/magic_router.dart';
import 'package:tech_marketplace/features/cart/view.dart';
import 'package:tech_marketplace/widgets/white_button.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(20),
              child: Icon(
                Icons.shopping_cart_outlined,
                size: 70,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Text(
                'Product added to cart!',
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
            WhiteButton(
              elevation: 10,
              text: 'Go to cart',
              onPressed: () {
                MagicRouter.navigateTo(const CartView());
              },
              size: Size(sizeFromWidth(context, 1.3), 40),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(sizeFromWidth(context, 1.3), 40)),
              onPressed: () {
                MagicRouter.pop();
              },
              child: Text(
                'Back to shopping',
              ),
            )
          ],
        ),
      ),
    );
  }
}
