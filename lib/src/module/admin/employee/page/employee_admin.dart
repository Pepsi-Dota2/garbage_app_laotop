import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hr_app/src/core/router/router.dart';
import 'package:hr_app/src/core/enum/enum.dart';
import 'package:hr_app/src/module/admin/employee/cubit/employee_cubit.dart';

@RoutePage()
class EmployeeAdminPage extends StatelessWidget implements AutoRouteWrapper {
  const EmployeeAdminPage({super.key});
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(create: (context) => EmployeeCubit()..getAllEmployee(), child: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Employee'), centerTitle: true, elevation: 0),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.router.push(CreateEmployeeAdminRoute());
        },
        child: const Icon(Icons.add),
        tooltip: 'Create Employee',
      ),
      body: BlocBuilder<EmployeeCubit, EmployeeState>(
        builder: (context, state) {
          if (state.status == Status.loading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state.employees.isEmpty) {
            return const Center(child: Text('No employees found.'));
          }
          return ListView.builder(
            itemCount: state.employees.length,
            itemBuilder: (context, index) {
              final employee = state.employees[index];
              return ListTile(
                leading: Icon(Icons.person),
                title: Text(employee.name),
                subtitle: Text(employee.email),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.edit, color: Colors.blue),
                      onPressed: () {
                        context.router.push(CreateEmployeeAdminRoute(userId: employee.uid));
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.delete, color: Colors.red),
                      onPressed: () {
                        // Confirm delete before deleting
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: const Text('Delete Employee'),
                            content: Text('Are you sure you want to delete ${employee.name}?'),
                            actions: [
                              TextButton(onPressed: () => Navigator.of(context).pop(), child: const Text('Cancel')),
                              TextButton(
                                onPressed: () {
                                  context.read<EmployeeCubit>().deleteEmployee(employee.uid);
                                  Navigator.of(context).pop();
                                },
                                child: const Text('Delete', style: TextStyle(color: Colors.red)),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
