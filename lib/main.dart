import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tech_marketplace/constant/colors.dart';
import 'package:tech_marketplace/core/routes/magic_router.dart';
import 'package:tech_marketplace/features/bottom_nav/view.dart';
import 'package:tech_marketplace/features/cart/view.dart';
import 'package:tech_marketplace/features/check_out/view.dart';
import 'package:tech_marketplace/features/credit/view.dart';
import 'package:tech_marketplace/features/home/view.dart';
import 'package:tech_marketplace/features/on_boarding/view.dart';
import 'package:tech_marketplace/features/order_validate/view.dart';
import 'package:tech_marketplace/features/splash/view.dart';
import 'package:tech_marketplace/features/welcome/view.dart';
import 'package:tech_marketplace/widgets/cart_added.dart';

import 'features/details/view.dart';
import 'features/favorite/view.dart';
import 'features/signup/view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
          statusBarColor: Colors.white),
    );
    return MaterialApp(
      builder: (context, child) => SafeArea(child: child!),
      navigatorKey: navigatorKey,
      onGenerateRoute: onGenerateRoute,
      debugShowCheckedModeBanner: false,
      theme: FlexThemeData.light(scheme: FlexScheme.materialHc).copyWith(
          appBarTheme: const AppBarTheme(backgroundColor: Colors.white)),
      darkTheme: FlexThemeData.dark(scheme: FlexScheme.materialHc),
      themeMode: ThemeMode.light,
      home: const CreditCardView(),
    );
  }
}
