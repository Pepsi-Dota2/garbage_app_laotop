import 'package:auto_route/auto_route.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hr_app/src/core/enum/enum.dart';
import 'package:hr_app/src/module/admin/analysis/page/cubit/analysis_cubit.dart';

class AnalysisAdminPage extends StatelessWidget implements AutoRouteWrapper {
  const AnalysisAdminPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(create: (context) => AnalysisCubit()..fetchUsersAndCollectionRoles(), child: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('User Roles & Collection Bar Charts')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: BlocBuilder<AnalysisCubit, AnalysisState>(
          builder: (context, state) {
            if (state.status == Status.loading) {
              return const Center(child: CircularProgressIndicator());
            }
            if (state.status == Status.failure) {
              return const Center(child: Text('Failed to load data'));
            }

            final users = state.users;
            final collection = state.colletion;

            if (users.isEmpty) {
              return const Center(child: Text('No users found'));
            }
            if (collection == null || collection.isEmpty) {
              return const Center(child: Text('No collection data found'));
            }

            // User roles count
            final roleCounts = <String, int>{};
            for (var user in users) {
              final role = user.role ?? 'Unknown';
              roleCounts[role] = (roleCounts[role] ?? 0) + 1;
            }
            final roles = roleCounts.keys.toList();
            final roleValues = roleCounts.values.toList();
            final maxRoleValue = roleValues.isEmpty ? 0 : roleValues.reduce((a, b) => a > b ? a : b);

            // Collection count for Express and Normal
            final collectionCounts = <String, int>{'Express': 0, 'Normal': 0};
            for (var item in collection) {
              if (item.expressPrice > 0) {
                collectionCounts['Express'] = (collectionCounts['Express'] ?? 0) + 1;
              }
              if (item.normalPrice > 0) {
                collectionCounts['Normal'] = (collectionCounts['Normal'] ?? 0) + 1;
              }
            }
            final collections = collectionCounts.keys.toList();
            final collectionValues = collectionCounts.values.toList();
            final maxCollectionValue = collectionValues.isEmpty ? 0 : collectionValues.reduce((a, b) => a > b ? a : b);

            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('ລູກຄ້າ', style: Theme.of(context).textTheme.titleLarge),
                  const SizedBox(height: 16),
                  SizedBox(
                    height: 300,
                    child: BarChart(
                      BarChartData(
                        maxY: maxRoleValue * 1.2,
                        barGroups: List.generate(roles.length, (index) {
                          final value = roleValues[index].toDouble();
                          return BarChartGroupData(
                            x: index,
                            barRods: [
                              BarChartRodData(toY: value, color: _colorForRole(roles[index]), width: 20, borderRadius: BorderRadius.circular(6)),
                            ],
                          );
                        }),
                        titlesData: FlTitlesData(
                          bottomTitles: AxisTitles(
                            sideTitles: SideTitles(
                              showTitles: true,
                              getTitlesWidget: (value, meta) {
                                final idx = value.toInt();
                                if (idx < 0 || idx >= roles.length) return const SizedBox();
                                return SideTitleWidget(
                                  meta: meta,
                                  child: Text(roles[idx], style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                                );
                              },
                              reservedSize: 42,
                            ),
                          ),
                          leftTitles: AxisTitles(
                            sideTitles: SideTitles(showTitles: true, reservedSize: 40, interval: (maxRoleValue / 5).ceilToDouble()),
                          ),
                          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                        ),
                        gridData: FlGridData(show: true, horizontalInterval: (maxRoleValue / 5).ceilToDouble()),
                        borderData: FlBorderData(show: false),
                      ),
                    ),
                  ),
                  const SizedBox(height: 32),

                  Text('ປະເພດຂອງການເກັບ', style: Theme.of(context).textTheme.titleLarge),
                  const SizedBox(height: 16),
                  SizedBox(
                    height: 300,
                    child: BarChart(
                      BarChartData(
                        maxY: maxCollectionValue * 1.2,
                        barGroups: List.generate(collections.length, (index) {
                          final value = collectionValues[index].toDouble();
                          return BarChartGroupData(
                            x: index,
                            barRods: [
                              BarChartRodData(
                                toY: value,
                                color: _colorForCollection(collections[index]),
                                width: 20,
                                borderRadius: BorderRadius.circular(6),
                              ),
                            ],
                          );
                        }),
                        titlesData: FlTitlesData(
                          bottomTitles: AxisTitles(
                            sideTitles: SideTitles(
                              showTitles: true,
                              getTitlesWidget: (value, meta) {
                                final idx = value.toInt();
                                if (idx < 0 || idx >= collections.length) return const SizedBox();
                                return SideTitleWidget(
                                  meta: meta,
                                  child: Text(collections[idx], style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                                );
                              },
                              reservedSize: 42,
                            ),
                          ),
                          leftTitles: AxisTitles(
                            sideTitles: SideTitles(showTitles: true, reservedSize: 40, interval: (maxCollectionValue / 5).ceilToDouble()),
                          ),
                          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                        ),
                        gridData: FlGridData(show: true, horizontalInterval: (maxCollectionValue / 5).ceilToDouble()),
                        borderData: FlBorderData(show: false),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Legends
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text('User Roles', style: Theme.of(context).textTheme.titleMedium),
                          const SizedBox(height: 8),
                          Wrap(
                            spacing: 12,
                            runSpacing: 8,
                            children: roleCounts.entries.map((entry) {
                              return _legendItem(_colorForRole(entry.key), '${entry.key} (${entry.value})');
                            }).toList(),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text('Collection Types', style: Theme.of(context).textTheme.titleMedium),
                          const SizedBox(height: 8),
                          Wrap(
                            spacing: 12,
                            runSpacing: 8,
                            children: collectionCounts.entries.map((entry) {
                              return _legendItem(_colorForCollection(entry.key), '${entry.key} (${entry.value})');
                            }).toList(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _legendItem(Color color, String label) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(width: 16, height: 16, color: color, margin: const EdgeInsets.only(right: 8)),
        Text(label),
      ],
    );
  }

  Color _colorForRole(String role) {
    switch (role.toLowerCase()) {
      case 'admin':
        return Colors.redAccent;
      case 'user':
        return Colors.blueAccent;
      case 'manager':
        return Colors.green;
      default:
        return Colors.grey;
    }
  }

  Color _colorForCollection(String name) {
    switch (name.toLowerCase()) {
      case 'express':
        return Colors.orangeAccent;
      case 'normal':
        return Colors.lightBlueAccent;
      default:
        return Colors.grey;
    }
  }
}
