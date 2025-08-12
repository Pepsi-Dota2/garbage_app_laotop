import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hr_app/src/module/admin/home/page/home_admin.dart';
import 'package:hr_app/src/module/admin/profile/cubit/profile_admin_cubit.dart';
import 'package:hr_app/src/module/admin/profile/page/profile_admin.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

@RoutePage()
class DashboardAdminPage extends StatelessWidget {
  const DashboardAdminPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: [
        HomeAdminPage(),
        BlocProvider<ProfileAdminCubit>(create: (_) => ProfileAdminCubit(), child: ProfileAdminPage()),

        // HomeAdminPage(),
        // BlocProvider<SettingCubit>(create: (_) => SettingCubit(), child: SettingPage()),
      ],
      items: [
        PersistentBottomNavBarItem(icon: Icon(Icons.home), title: "home", activeColorPrimary: Colors.grey.shade500),
        PersistentBottomNavBarItem(icon: Icon(Icons.settings), title: "setting", activeColorPrimary: Colors.grey.shade500),
      ],
      backgroundColor: Colors.grey.shade200,
      handleAndroidBackButtonPress: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardAppears: true,
      navBarHeight: kBottomNavigationBarHeight,
      navBarStyle: NavBarStyle.style9,
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
