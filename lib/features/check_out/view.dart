import 'package:flutter/material.dart';
import 'package:tech_marketplace/constant/colors.dart';
import 'package:tech_marketplace/constant/responsive.dart';
import 'package:tech_marketplace/core/routes/magic_router.dart';
import 'package:tech_marketplace/features/credit/view.dart';
import 'package:tech_marketplace/features/order_validate/view.dart';
import 'package:tech_marketplace/widgets/check_circle_card.dart';
import 'package:tech_marketplace/widgets/check_circle_card_multi.dart';
import 'package:tech_marketplace/widgets/view_title.dart';
part 'units/payment_method.dart';
part 'units/address.dart';
part 'units/cost_calc.dart';
part 'units/order_button.dart';

class CheckOutView extends StatelessWidget {
  const CheckOutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const ViewTitle(
          title: 'Complete Order',
          padding: 0,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            _PaymentMethod(),
            _Address(),
            _CostCalc(),
            _OrderButton()
          ],
        ),
      ),
    );
  }
}





