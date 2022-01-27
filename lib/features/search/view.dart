import 'package:flutter/material.dart';
import 'package:tech_marketplace/widgets/search_bar.dart';
part 'units/search_text.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.white,
          title: Column(
            children: const [
              _SearchText(),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(20),
                child: SearchInput(hintText: 'What are you looking for ?'),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.all(8),
                itemCount: 30,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(20)),
                    child: ListTile(
                      contentPadding: const EdgeInsets.all(8),
                      leading: Image.asset('assets/images/Surface laptop.png'),
                      title: const Text('Google Home mini'),
                      subtitle: const Text('USD 49'),
                    ),
                  );
                },
              )
            ],
          ),
        )
      ],
    );
  }
}
