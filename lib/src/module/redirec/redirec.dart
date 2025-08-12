import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hr_app/src/core/helper/token_storage.dart';
import 'package:hr_app/src/core/router/router.dart';

@RoutePage()
class RedirectPage extends StatelessWidget {
  const RedirectPage({super.key}); // 👈 add constructor

  @override
  Widget build(BuildContext context) {
    Future.microtask(() async {
      final token = await TokenStorage.getAccessToken();
      final role = await UserRole.getRole();

      if (token != null) {
        if (role == 'admin') {
          context.router.replace(const DashboardAdminRoute());
        } else if (role == 'employee') {
          context.router.replace(const DashboardEmployeeRoute());
        } else {
          context.router.replace(const DashboardRoute());
        }
      } else {
        context.router.replace(const AuthRoute());
      }
    });

    return const Scaffold(body: Center(child: CircularProgressIndicator()));
  }
}
