import 'package:flutter/material.dart';
import 'package:tech_marketplace/constant/colors.dart';
import 'package:tech_marketplace/constant/icons_defaults.dart';
import 'package:tech_marketplace/constant/responsive.dart';
import 'package:tech_marketplace/core/routes/magic_router.dart';
import 'package:tech_marketplace/features/catagories/select_view.dart';
import 'package:tech_marketplace/features/details/view.dart';
import 'package:tech_marketplace/features/favorite/view.dart';
import 'package:tech_marketplace/widgets/page_indiactor.dart';
import 'package:tech_marketplace/widgets/product_card.dart';
import 'package:tech_marketplace/widgets/sort_card.dart';
import 'package:tech_marketplace/widgets/view_title.dart';
part 'units/home_page_view.dart';
part 'units/home_page_view_indicator.dart';
part 'units/home_title.dart';
// part 'units/bottom_nav_bar.dart';
part 'units/sort_section.dart';
part 'units/sales_text.dart';
part 'units/product_on_sale.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverAppBar(
          backgroundColor: Colors.white,
          title:_HomeTitle(),
        ),
        SliverToBoxAdapter(
          child: Column(
            children: const [
              _HomePageView(),
              _HomePageViewIndicator(),
              _SortSection(),
              _SaleText(),
              _ProductOnSaleSection(),
            ],
          ),
        ),
      ],
    );
    // bottomNavigationBar: const _BottomNavBar(),
  }
}


