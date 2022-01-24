// import 'package:bloc/bloc.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:meta/meta.dart';
// import 'package:tech_marketplace/core/routes/magic_router.dart';
// import 'package:tech_marketplace/features/cart/view.dart';
// import 'package:tech_marketplace/features/home/view.dart';
// import 'package:tech_marketplace/features/profile/view.dart';
// import 'package:tech_marketplace/features/search/view.dart';

// part 'home_state.dart';

// class BottomNavCubit extends Cubit<BottomNavState> {
//   BottomNavCubit() : super(BottomNavnitial());

//   BottomNavCubit of(context) => BlocProvider.of(context);

//   int bottomNavBarIndex = 0;
//   List<Widget> bottomNavBatViews = const [
//     HomeView(),
//     SearchView(),
//     CartView(),
//     ProfileView(),
//   ];

//   void navBarController(int value) {
//     bottomNavBarIndex = value;
//     emit(BottomNavNavigate());
//   }
// }
