import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hr_app/src/core/router/route_guard.dart';
import 'package:hr_app/src/module/admin/dashboard/page/dashboard_admin.dart';
import 'package:hr_app/src/module/admin/home/page/home_admin.dart';
import 'package:hr_app/src/module/admin/report/page/report_admin.dart';
import 'package:hr_app/src/module/admin/schedule/page/schedule_admin.dart';
import 'package:hr_app/src/module/admin/user/page/user_admin.dart';
import 'package:hr_app/src/module/admin/user/page/user_admin_edit.dart';
import 'package:hr_app/src/module/admin/zone/page/create_zone.dart';
import 'package:hr_app/src/module/admin/zone/page/zone_admin.dart';
import 'package:hr_app/src/module/admin/zone/page/zone_detail.dart';
import 'package:hr_app/src/module/auth/pages/auth.dart';
import 'package:hr_app/src/module/auth/pages/register.dart';
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
    AutoRoute(page: RegisterRoute.page),
    AutoRoute(page: DashboardRoute.page, guards: [AuthGuard()]),
    AutoRoute(page: DashboardAdminRoute.page, guards: [AdminGuard()]),
    AutoRoute(page: HomeAdminRoute.page, guards: [AdminGuard()]),
    AutoRoute(page: UserAdminRoute.page, guards: [AdminGuard()]),
    AutoRoute(page: UserAdminEditRoute.page, guards: [AdminGuard()]),
    AutoRoute(page: ScheduleAdminRoute.page, guards: [AdminGuard()]),
    AutoRoute(page: ZoneAdminRoute.page, guards: [AdminGuard()]),
    AutoRoute(page: CreateZoneRoute.page, guards: [AdminGuard()]),
    AutoRoute(page: ZoneDetailRoute.page, guards: [AdminGuard()]),
  ];
}
