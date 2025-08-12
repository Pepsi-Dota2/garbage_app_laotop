import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hr_app/src/core/router/route_guard.dart';
import 'package:hr_app/src/module/admin/analysis/page/analysis.dart';
import 'package:hr_app/src/module/admin/dashboard/page/dashboard_admin.dart';
import 'package:hr_app/src/module/admin/employee/page/create_employee_admin.dart';
import 'package:hr_app/src/module/admin/employee/page/employee_admin.dart';
import 'package:hr_app/src/module/admin/home/page/home_admin.dart';
import 'package:hr_app/src/module/admin/profile/page/profile_admin.dart';
import 'package:hr_app/src/module/admin/report/page/report_admin.dart';
import 'package:hr_app/src/module/admin/schedule/page/schedule_admin.dart';
import 'package:hr_app/src/module/admin/user_admin/page/user_admin.dart';
import 'package:hr_app/src/module/admin/user_admin/page/user_admin_edit.dart';
import 'package:hr_app/src/module/admin/zone/page/create_zone.dart';
import 'package:hr_app/src/module/admin/zone/page/zone_admin.dart';
import 'package:hr_app/src/module/admin/zone/page/zone_detail.dart';
import 'package:hr_app/src/module/auth/pages/auth.dart';
import 'package:hr_app/src/module/auth/pages/register.dart';
import 'package:hr_app/src/module/client/dashboard/page/dashboard.dart';
import 'package:hr_app/src/module/client/express/page/express.dart';
import 'package:hr_app/src/module/client/express/page/payment_express.dart';
import 'package:hr_app/src/module/client/home/page/history.dart';
import 'package:hr_app/src/module/client/home/page/home.dart';
import 'package:hr_app/src/module/client/payment/page/payment.dart';
import 'package:hr_app/src/module/client/profile/page/profile.dart';
import 'package:hr_app/src/module/employee/dashboard/page/dashboard.dart';
import 'package:hr_app/src/module/employee/home/page/customer_detail.dart';
import 'package:hr_app/src/module/employee/home/page/home_employee.dart';
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
    AutoRoute(page: ProfileRoute.page, guards: [AuthGuard()]),
    AutoRoute(page: ExpressRoute.page, guards: [AuthGuard()]),
    AutoRoute(page: PaymentCollectionTypeRoute.page, guards: [AuthGuard()]),
    AutoRoute(page: HistoryRoute.page, guards: [AuthGuard()]),

    //admin
    AutoRoute(page: DashboardAdminRoute.page, guards: [AdminGuard()]),
    AutoRoute(page: HomeAdminRoute.page, guards: [AdminGuard()]),
    AutoRoute(page: UserAdminRoute.page, guards: [AdminGuard()]),
    AutoRoute(page: UserAdminEditRoute.page, guards: [AdminGuard()]),
    AutoRoute(page: ScheduleAdminRoute.page, guards: [AdminGuard()]),
    AutoRoute(page: ZoneAdminRoute.page, guards: [AdminGuard()]),
    AutoRoute(page: CreateZoneRoute.page, guards: [AdminGuard()]),
    AutoRoute(page: ZoneDetailRoute.page, guards: [AdminGuard()]),
    AutoRoute(page: EmployeeAdminRoute.page, guards: [AdminGuard()]),
    AutoRoute(page: CreateEmployeeAdminRoute.page, guards: [AdminGuard()]),
    AutoRoute(page: AnalysisAdminRoute.page, guards: [AdminGuard()]),

    //employee
    AutoRoute(page: DashboardEmployeeRoute.page, guards: [EmployeeGuard()]),
    AutoRoute(page: HomeEmployeeRoute.page, guards: [EmployeeGuard()]),
    AutoRoute(page: CustomerDetailRoute.page, guards: [EmployeeGuard()]),
  ];
}
