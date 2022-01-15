import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:tech_marketplace/core/routes/magic_router.dart';
import 'package:tech_marketplace/features/on_boarding/view.dart';
import 'package:tech_marketplace/features/splash/view.dart';
import 'package:tech_marketplace/features/welcome/view.dart';
import 'package:tech_marketplace/test.dart';

import 'features/signup/view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      onGenerateRoute: onGenerateRoute,
      debugShowCheckedModeBanner: false,
      theme: FlexThemeData.light(scheme: FlexScheme.materialHc),
      darkTheme: FlexThemeData.dark(scheme: FlexScheme.materialHc),
      themeMode: ThemeMode.light,
      home: const SplashView(),
    );
  }
}
