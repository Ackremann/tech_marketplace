import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:tech_marketplace/features/cart/view.dart';
import 'package:tech_marketplace/features/home/cubit/home_cubit.dart';
import 'package:tech_marketplace/features/home/view.dart';
import 'package:tech_marketplace/features/profile/view.dart';
import 'package:tech_marketplace/features/search/view.dart';

part 'bottomnav_state.dart';

class BottomNavCubit extends Cubit<BottomNavState> {
  BottomNavCubit() : super(BottomNavInitial());

  BottomNavCubit of(context) => BlocProvider.of(context);

  int bottomNavBarIndex = 0;
  List<Widget> bottomNavBatViews = const [
    HomeView(),
    SearchView(),
    CartView(),
    ProfileView(),
  ];

  void navBarController(int value) {
    bottomNavBarIndex = value;
    emit(BottomNavNavigate());
  }
}
