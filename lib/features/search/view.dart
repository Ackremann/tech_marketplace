import 'package:flutter/material.dart';
import 'package:tech_marketplace/core/routes/magic_router.dart';
import 'package:tech_marketplace/features/details/view.dart';
import 'package:tech_marketplace/widgets/search_bar.dart';
import 'package:tech_marketplace/widgets/view_title.dart';
part 'units/search_title.dart';
part 'units/search_bar.dart';
part 'units/search_result.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverAppBar(
          backgroundColor: Colors.white,
          title: _SearchTitle(),
        ),
        SliverToBoxAdapter(
          child: Column(
            children: const [
              _SearchBar(),
              _SearchResult(),
            ],
          ),
        ),
      ],
    );
  }
}
