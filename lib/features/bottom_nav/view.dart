import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_marketplace/constant/icons_defaults.dart';

import 'cubit/bottomnav_cubit.dart';
part 'units/bottom_nav_bar.dart';

class BottomNavView extends StatelessWidget {
  const BottomNavView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BottomNavCubit(),
      child: Scaffold(
        body: BlocBuilder<BottomNavCubit, BottomNavState>(
          builder: (context, state) {
            final cubit = BottomNavCubit().of(context);
            return cubit.bottomNavBatViews[cubit.bottomNavBarIndex];
          },
        ),
        bottomNavigationBar: const _BottomNavBar(),
      ),
    );
  }
}
