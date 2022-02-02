import 'package:flutter/material.dart';
import 'package:tech_marketplace/constant/colors.dart';
import 'package:tech_marketplace/constant/responsive.dart';

class OrderValidateView extends StatelessWidget {
  const OrderValidateView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.mainBackGroundColor.withOpacity(0.8),
      height: sizeFromHeight(context, 1),
      width: sizeFromWidth(context, 1),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(left: 10),
              width: sizeFromWidth(context, 2),
              height: sizeFromHeight(context, 2),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: Center(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  width: sizeFromWidth(context, 2.5),
                  height: sizeFromHeight(context, 2.5),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: AppColors.mainBackGroundColor, width: 15),
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: FittedBox(
                    child: Icon(
                      Icons.check_rounded,
                      color: AppColors.mainBackGroundColor,
                    ),
                  ),
                ),
              ),
            ),
            Text(
              'Order validate!',
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
