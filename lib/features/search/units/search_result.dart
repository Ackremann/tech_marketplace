part of '../view.dart';

class _SearchResult extends StatelessWidget {
  const _SearchResult({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(8),
      itemCount: 30,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.grey[100], borderRadius: BorderRadius.circular(20)),
          child: ListTile(
            onTap: () => MagicRouter.navigateTo(const DetailsView()),
            contentPadding: const EdgeInsets.all(8),
            leading: Image.asset('assets/images/Surface laptop.png'),
            title: const Text('Google Home mini'),
            subtitle: const Text('USD 49'),
          ),
        );
      },
    );
  }
}
