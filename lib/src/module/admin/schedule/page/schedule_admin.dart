import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hr_app/src/core/enum/enum.dart';
import 'package:hr_app/src/module/admin/schedule/widget/schedule_dialog.dart';
import 'package:intl/intl.dart'; // for better date formatting
import 'package:hr_app/src/module/admin/schedule/cubit/schedule_cubit.dart';

@RoutePage()
class ScheduleAdminPage extends StatelessWidget implements AutoRouteWrapper {
  const ScheduleAdminPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(create: (context) => ScheduleCubit()..fetchSchedules(), child: this);
  }

  @override
  Widget build(BuildContext context) {
    final dateFormatter = DateFormat('EEE, MMM d, yyyy');

    return Scaffold(
      appBar: AppBar(title: const Text("Schedules"), centerTitle: true, elevation: 4),
      floatingActionButton: FloatingActionButton(onPressed: () => showCreateScheduleDialog(context), child: Icon(Icons.add)),
      body: BlocBuilder<ScheduleCubit, ScheduleState>(
        builder: (context, state) {
          if (state.status == Status.loading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state.schedules.isEmpty) {
            return Center(child: Text("No schedules found", style: Theme.of(context).textTheme.bodyLarge));
          }

          return ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            itemCount: state.schedules.length,
            separatorBuilder: (_, __) => const SizedBox(height: 12),
            itemBuilder: (context, index) {
              final schedule = state.schedules[index];
              final createdAtStr = schedule.created_at != null ? dateFormatter.format(schedule.created_at!.toLocal()) : "N/A";

              return Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                elevation: 6,
                shadowColor: Colors.black26,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(schedule.collection_day, style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold)),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          const Icon(Icons.access_time_outlined, size: 20, color: Colors.blueGrey),
                          const SizedBox(width: 6),
                          Text("${schedule.start_time} - ${schedule.end_time}", style: Theme.of(context).textTheme.bodyMedium),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          const Icon(Icons.people_alt_outlined, size: 20, color: Colors.green),
                          const SizedBox(width: 6),
                          Text("Population: ${schedule.population}", style: Theme.of(context).textTheme.bodyMedium),
                        ],
                      ),
                      const Divider(height: 24),
                      Text("Created: $createdAtStr", style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.grey[600])),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
