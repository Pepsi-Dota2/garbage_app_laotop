import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hr_app/src/core/enum/enum.dart';
import 'package:hr_app/src/core/router/router.dart';
import 'package:hr_app/src/module/admin/zone/cubit/zone_admin_cubit.dart';

// Import your auth or user provider to get current user ID
import 'package:firebase_auth/firebase_auth.dart'; // example

@RoutePage()
class ZoneAdminPage extends StatelessWidget implements AutoRouteWrapper {
  const ZoneAdminPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => ZoneAdminCubit()
        ..getAllZones()
        ..getCustomers(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Schedules"), centerTitle: true, elevation: 4),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.router.push(CreateZoneRoute());
        },
        child: const Icon(Icons.add),
        tooltip: 'Create Zone',
      ),
      body: BlocBuilder<ZoneAdminCubit, ZoneAdminState>(
        builder: (context, state) {
          if (state.status == Status.loading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state.status == Status.failure) {
            return const Center(child: Text("Failed to load zones"));
          }
          if (state.district.isEmpty) {
            return const Center(child: Text("No zones found"));
          }
          return ListView.builder(
            itemCount: state.district.length,
            itemBuilder: (context, index) {
              final zone = state.district[index];
              return InkWell(
                onTap: () {
                  context.router.push(ZoneDetailRoute(userId: zone.uid ?? ""));
                },

                child: ListTile(title: Text(zone.zone_name), subtitle: Text(zone.district), trailing: Text('Population: ${zone.population}')),
              );
            },
          );
        },
      ),
    );
  }
}
