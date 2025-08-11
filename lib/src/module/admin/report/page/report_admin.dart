import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hr_app/src/module/admin/report/cubit/report_admin_cubit.dart';

@RoutePage()
class ReportAdminPage extends StatelessWidget implements AutoRouteWrapper {
  const ReportAdminPage({super.key});
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(create: (context) => ReportAdminCubit(), child: this);
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
