import 'package:auto_route/auto_route.dart';
import 'package:hr_app/src/core/router/route_guard.dart';
import 'package:hr_app/src/module/admin/dashboard/page/dashboard_admin.dart';
import 'package:hr_app/src/module/auth/pages/auth.dart';
import 'package:hr_app/src/module/client/dashboard/page/dashboard.dart';
import 'package:hr_app/src/module/client/home/page/home.dart';
import 'package:hr_app/src/module/redirec/redirec.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: RedirectRoute.page, initial: true),
    AutoRoute(page: AuthRoute.page),
    AutoRoute(page: DashboardRoute.page, guards: [AuthGuard()]),
  ];
}
