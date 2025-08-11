import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hr_app/src/core/enum/enum.dart';
import 'package:hr_app/src/module/admin/zone/cubit/zone_admin_cubit.dart';

@RoutePage()
class ZoneDetailPage extends StatelessWidget implements AutoRouteWrapper {
  const ZoneDetailPage({super.key, required this.userId});
  final String userId;

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(create: (context) => ZoneAdminCubit()..getZonesForUser(userId), child: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BlocBuilder<ZoneAdminCubit, ZoneAdminState>(
          builder: (context, state) {
            final username = state.user?.username ?? 'Zone Detail';
            return Text(username);
          },
        ),
        centerTitle: true,
        elevation: 4,
      ),
      body: BlocBuilder<ZoneAdminCubit, ZoneAdminState>(
        builder: (context, state) {
          if (state.status == Status.loading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state.status == Status.failure) {
            return const Center(child: Text("Failed to load zones."));
          }
          if (state.district.isEmpty) {
            return const Center(child: Text("No zones found for this user."));
          }
          return ListView.separated(
            padding: const EdgeInsets.all(16),
            itemCount: state.district.length,
            separatorBuilder: (_, __) => const Divider(),
            itemBuilder: (context, index) {
              final zone = state.district[index];
              return ListTile(
                title: Text(zone.zone_name, style: const TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Text(zone.district),
                trailing: Text('Pop: ${zone.population}'),
              );
            },
          );
        },
      ),
    );
  }
}
