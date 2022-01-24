part of '../view.dart';

class _BottomNavBar extends StatelessWidget {
  const _BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: BlocBuilder<BottomNavCubit, BottomNavState>(
        builder: (context, state) {
          final cubit = BottomNavCubit().of(context);

          return Theme(
            data: ThemeData(
              splashColor: Colors.transparent,
              // highlightColor: Colors.transparent,
            ),
            child: BottomNavigationBar(
              showSelectedLabels: false,
              backgroundColor: const Color(0xffEFF5FB),
              elevation: 0,
              currentIndex: cubit.bottomNavBarIndex,
              onTap: (value) => cubit.navBarController(value),
              unselectedItemColor: Colors.black,
              selectedItemColor: Theme.of(context).primaryColor,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Defaults.bottomNavIcons[0]),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Defaults.bottomNavIcons[1]),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Defaults.bottomNavIcons[2]),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Defaults.bottomNavIcons[3]),
                  label: '',
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
