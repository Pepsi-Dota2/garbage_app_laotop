import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:hr_app/src/module/client/home/cubit/home_cubit.dart';
import 'package:intl/intl.dart';

@RoutePage()
class HistoryPage extends StatelessWidget implements AutoRouteWrapper {
  const HistoryPage({super.key});
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(create: (context) => HomeCubit()..fetchUserCollections(), child: this);
  }

  @override
  Widget build(BuildContext context) {
    final formatter = NumberFormat.decimalPattern('de_DE');
    return Scaffold(
      appBar: AppBar(title: const Text("History"), centerTitle: true, elevation: 4),
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return ListView.builder(
            itemCount: state.collection.length,
            itemBuilder: (BuildContext context, int index) {
              final item = state.collection[index];
              return ListTile(
                leading: Icon(Icons.local_shipping, color: Colors.amber.shade800, size: 30),
                title: Row(
                  children: [
                    Text(item.name, style: TextStyle(fontWeight: FontWeight.bold)),
                    Gap(10),
                    Text("status : ${item.status}"),
                  ],
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text('ຊື່ລູກຄ້າ: ${item.username}'), Text('${formatter.format(item.expressPrice)} kip')],
                ),
                trailing: Text(DateFormat('yyyy-MM-dd').format(item.createdAt ?? DateTime.now())),
              );
            },
          );
        },
      ),
    );
  }
}
