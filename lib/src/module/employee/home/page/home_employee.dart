import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hr_app/src/core/router/router.dart';
import 'package:hr_app/src/module/employee/home/cubit/home_employee_cubit.dart';

@RoutePage()
class HomeEmployeePage extends StatelessWidget implements AutoRouteWrapper {
  const HomeEmployeePage({super.key});
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(create: (context) => HomeEmployeeCubit()..fetchPendingRoles(), child: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Employee"), centerTitle: true, elevation: 4),
      body: BlocBuilder<HomeEmployeeCubit, HomeEmployeeState>(
        builder: (context, state) {
          return ListView.builder(
            itemCount: state.collection.length,
            itemBuilder: (BuildContext context, int index) {
              final item = state.collection[index];
              return InkWell(
                onTap: () {
                  print("id ${item.userId}");
                  print("id ${item.id}");
                  context.router.push(CustomerDetailRoute(userId: item.userId, collectionRoleDocId: item.id));
                },
                child: ListTile(
                  leading: Icon(Icons.local_shipping, color: Colors.amber),
                  title: Text(item.name),
                  subtitle: Text(item.username),
                  trailing: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      item.status,
                      style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12),
                    ),
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
