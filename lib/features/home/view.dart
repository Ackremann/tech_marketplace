import 'package:flutter/material.dart';
import 'package:tech_marketplace/core/routes/magic_router.dart';
import 'package:tech_marketplace/features/welcome/view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                MagicRouter.navigateAndPopAll(WelcomeView());
              },
              icon: Icon(Icons.exit_to_app))
        ],
      ),
      body: Center(child: Text('Home View')),
    );
  }
}
