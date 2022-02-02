import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tech_marketplace/constant/colors.dart';
import 'package:tech_marketplace/constant/responsive.dart';
import 'package:tech_marketplace/core/routes/magic_router.dart';
import 'package:tech_marketplace/widgets/cart_added.dart';
import 'package:tech_marketplace/widgets/page_indiactor.dart';
import 'package:tech_marketplace/widgets/view_title.dart';
part 'units/product_name.dart';
part 'units/product_sale.dart';
part 'units/product_image_indiactor.dart';
part 'units/product_image.dart';
part 'units/product_price.dart';
part 'units/product_description.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            MagicRouter.pop();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 30,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                _ProductName(),
                _ProductSaleAmount(),
                _ProductImage(),
                _ProductImgaeIndicator(),
                _productPrice(),
                _ProductDescription(),
                _CartAndFaivorateButtons(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _CartAndFaivorateButtons extends StatelessWidget {
  const _CartAndFaivorateButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            fixedSize: Size(
              sizeFromWidth(context, 1.5),
              40,
            ),
          ),
          onPressed: () {
            MagicRouter.navigateTo(const AddToCart());
          },
          child: const Text('Add to cart'),
        ),
        IconButton(
          iconSize: 30,
          splashRadius: 20,
          onPressed: () {},
          icon: Icon(
            Icons.star_border_rounded,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ],
    );
  }
}
