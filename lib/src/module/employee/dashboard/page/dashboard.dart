import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hr_app/src/module/client/profile/cubit/profile_cubit.dart';
import 'package:hr_app/src/module/client/profile/page/profile.dart';
import 'package:hr_app/src/module/employee/home/cubit/home_employee_cubit.dart';
import 'package:hr_app/src/module/employee/home/page/home_employee.dart';

import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

@RoutePage()
class DashboardEmployeePage extends StatelessWidget {
  const DashboardEmployeePage({super.key});

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: [
        BlocProvider<HomeEmployeeCubit>(create: (_) => HomeEmployeeCubit()..fetchPendingRoles(), child: HomeEmployeePage()),
        BlocProvider<ProfileCubit>(create: (_) => ProfileCubit(), child: ProfilePage()),
      ],
      items: [
        PersistentBottomNavBarItem(icon: Icon(Icons.home), title: "home", activeColorPrimary: Colors.grey.shade500),
        PersistentBottomNavBarItem(icon: Icon(Icons.person), title: "Profile", activeColorPrimary: Colors.grey.shade500),
      ],
      backgroundColor: Colors.grey.shade200,
      handleAndroidBackButtonPress: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardAppears: true,
      navBarHeight: kBottomNavigationBarHeight,
      navBarStyle: NavBarStyle.style8,
      animationSettings: NavBarAnimationSettings(
        navBarItemAnimation: ItemAnimationSettings(curve: Curves.linear, duration: const Duration(milliseconds: 200)),
        screenTransitionAnimation: ScreenTransitionAnimationSettings(
          animateTabTransition: true,
          duration: Duration(milliseconds: 200),
          screenTransitionAnimationType: ScreenTransitionAnimationType.slide,
        ),
      ),
    );
  }
}
