import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:hr_app/src/core/router/router.dart';
import 'package:hr_app/src/module/client/home/cubit/home_cubit.dart';
import 'package:hr_app/src/module/client/home/widget/card_user.dart';
import 'package:intl/intl.dart';

@RoutePage()
class HomePage extends StatelessWidget implements AutoRouteWrapper {
  const HomePage({super.key});
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(create: (context) => HomeCubit()..getCurrentUserFromFirestore(), child: this);
  }

  @override
  Widget build(BuildContext context) {
    final dateFormatter = DateFormat('EEE, MMM d, yyyy');
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        centerTitle: true,
        elevation: 4,
        actions: [
          IconButton(
            onPressed: () {
              context.router.push(const HistoryRoute());
            },
            icon: const Icon(Icons.history),
          ),
        ],
      ),
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CardUserWidget(name: state.user?.username ?? "", email: state.user?.email ?? ""),

              Expanded(
                child: ListView.separated(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  itemCount: state.schedules.length,
                  separatorBuilder: (_, __) => const SizedBox(height: 12),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final schedule = state.schedules[index];
                    final createdAtStr = schedule.created_at != null ? dateFormatter.format(schedule.created_at!.toLocal()) : "N/A";

                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                          decoration: BoxDecoration(color: Colors.grey.shade400, borderRadius: BorderRadius.circular(12)),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Icon(Icons.monetization_on_outlined, color: Colors.white70, size: 18),
                              SizedBox(width: 6),
                              Text("Schedule"),
                            ],
                          ),
                        ),
                        Gap(4),
                        Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                          elevation: 6,
                          shadowColor: Colors.black26,
                          child: Padding(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  schedule.collection_day,
                                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
                                ),
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
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
