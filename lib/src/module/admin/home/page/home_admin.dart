import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hr_app/src/core/router/router.dart';
import 'package:hr_app/src/module/admin/home/widget/card_widget.dart';

@RoutePage()
class HomeAdminPage extends StatelessWidget implements AutoRouteWrapper {
  const HomeAdminPage({super.key});
  @override
  Widget wrappedRoute(BuildContext context) {
    throw UnimplementedError();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Admin'), automaticallyImplyLeading: false),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        children: [
          CardWidget(
            icon: Icons.person,
            title: 'User',
            onTab: () async {
              await context.router.push(UserAdminRoute());
            },
          ),
          CardWidget(
            icon: Icons.schedule,
            title: 'Schedule',
            onTab: () async {
              await context.router.push(ScheduleAdminRoute());
            },
          ),
          CardWidget(
            icon: Icons.settings,
            title: 'Zone',
            onTab: () async {
              await context.router.push(ZoneAdminRoute());
            },
          ),
          CardWidget(icon: Icons.report, title: 'Reports', onTab: () {}),
        ],
      ),
    );
  }
}
