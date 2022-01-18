import 'package:flutter/material.dart';
import 'package:tech_marketplace/constant/Icons_defaults.dart';
import 'package:tech_marketplace/constant/colors.dart';
import 'package:tech_marketplace/constant/responsive.dart';
import 'package:tech_marketplace/widgets/page_indiactor.dart';
import 'package:tech_marketplace/widgets/product_card.dart';
import 'package:tech_marketplace/widgets/sort_card.dart';
part 'units/home_page_view.dart';
part 'units/home_page_view_indicator.dart';
part 'units/home_text.dart';
part 'units/bottom_nav_bar.dart';
part 'units/sort_section.dart';
part 'units/sales_text.dart';
part 'units/product_on_sale.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _HomeText(),
                _HomePageView(),
                _HomePageViewIndicator(),
                _SortSection(),
                _SaleText(),
                _ProductOnSaleSection(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const _BottomNavBar(),
    );
  }
}
