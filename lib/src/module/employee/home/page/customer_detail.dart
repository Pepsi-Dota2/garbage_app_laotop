import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hr_app/src/core/enum/enum.dart';
import 'package:hr_app/src/core/widget/btn_submit.dart';
import 'package:hr_app/src/module/client/express/cubit/express_cubit.dart';
import 'package:hr_app/src/module/client/express/widget/location_map.dart';
import 'package:hr_app/src/module/employee/home/cubit/home_employee_cubit.dart';

@RoutePage()
class CustomerDetailPage extends StatelessWidget implements AutoRouteWrapper {
  const CustomerDetailPage({super.key, required this.userId, this.collectionRoleDocId});

  final String? userId;
  final String? collectionRoleDocId;

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => HomeEmployeeCubit()
            ..fetchCustomerDetails(userId: userId ?? '')
            ..fetchCollectionRoleDetails(collectionRoleDocId ?? ''),
        ),
        BlocProvider(create: (_) => ExpressCubit()),
      ],
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Customer Detail"), centerTitle: true, elevation: 4),
      body: BlocBuilder<HomeEmployeeCubit, HomeEmployeeState>(
        builder: (context, state) {
          final cubit = context.read<HomeEmployeeCubit>();

          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: Text("Customer: ${state.selectedCustomerName}", style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ),
              Expanded(
                child: LocationMap(
                  latitude: state.latitude ?? 0.0,
                  longitude: state.longitude ?? 0.0,
                  markerId: 'user_marker',
                  mapType: state.mapType,
                  onMapTypeButtonPressed: cubit.switchMapType,
                ),
              ),
              if (collectionRoleDocId != null && state.status != Status.loading)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: BtnFromSubmit(
                    onPressed: () async {
                      try {
                        await cubit.acceptJob(collectionRoleDocId!);
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Job accepted successfully!')));
                      } catch (_) {
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Failed to accept job.')));
                      }
                    },
                    title: "Accept Job",
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}
