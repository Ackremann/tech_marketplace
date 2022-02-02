import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tech_marketplace/constant/responsive.dart';
import 'package:tech_marketplace/core/routes/magic_router.dart';
import 'package:tech_marketplace/features/order_validate/view.dart';
import 'package:tech_marketplace/widgets/app_text_fields.dart';
import 'package:tech_marketplace/widgets/view_title.dart';
part 'units/cost_calc.dart';
part 'units/pay_button.dart';

class CreditCardView extends StatelessWidget {
  const CreditCardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
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
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ViewTitle(title: 'Pay Via Credit Card'),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Text('Card Number'),
                  ),
                  AppTextField(
                    hint: 'xxx-xxx-xxx-xxx',
                    backgroundColor: Colors.black,
                    textColor: Colors.black,
                    keyboardType: TextInputType.number,
                    onSaved: (s) {},
                    validator: (v) {},
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: sizeFromWidth(context, 2.3),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(bottom: 8.0),
                                child: Text('Card Number'),
                              ),
                              AppTextField(
                                hint: 'mm/yy',
                                backgroundColor: Colors.black,
                                textColor: Colors.black,
                                keyboardType: TextInputType.number,
                                onSaved: (s) {},
                                validator: (v) {},
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: sizeFromWidth(context, 2.3),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(bottom: 8.0),
                                child: Text('Card Number'),
                              ),
                              AppTextField(
                                hint: 'xxx',
                                backgroundColor: Colors.black,
                                textColor: Colors.black,
                                keyboardType: TextInputType.number,
                                onSaved: (s) {},
                                validator: (v) {},
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  _CostCalc(),
                  _PayButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
