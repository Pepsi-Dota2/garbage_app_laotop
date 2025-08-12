import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hr_app/src/core/enum/enum.dart';
import 'package:hr_app/src/core/widget/btn_submit.dart';
import 'package:hr_app/src/module/admin/employee/cubit/employee_cubit.dart';

@RoutePage()
class CreateEmployeeAdminPage extends StatelessWidget implements AutoRouteWrapper {
  final String? userId;
  const CreateEmployeeAdminPage({super.key, this.userId});
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(create: (context) => EmployeeCubit()..loadEmployeeById(userId ?? ''), child: this);
  }

  bool get isEdit => userId != null && userId!.isNotEmpty;

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    final cubit = context.read<EmployeeCubit>();

    return Scaffold(
      appBar: AppBar(title: Text(isEdit ? 'Edit Employee' : 'Create Employee'), centerTitle: true, elevation: 0),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BlocConsumer<EmployeeCubit, EmployeeState>(
          listener: (context, state) {
            if (state.status == Status.success) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text(isEdit ? 'Employee updated successfully!' : 'Employee created successfully!')));
              if (!isEdit) {
                cubit.nameController.clear();
                cubit.emailController.clear();
                cubit.passwordController.clear();
              }
            } else if (state.status == Status.failure) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text(isEdit ? 'Failed to update employee.' : 'Failed to create employee.')));
            }
          },
          builder: (context, state) {
            // If editing, the cubit.loadEmployeeById should have populated controllers.

            return Form(
              key: formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: cubit.nameController,
                    decoration: const InputDecoration(labelText: "Name", border: OutlineInputBorder(), prefixIcon: Icon(Icons.person)),
                    validator: (value) => (value == null || value.isEmpty) ? 'Please enter your name' : null,
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: cubit.emailController,
                    decoration: const InputDecoration(labelText: "Email", border: OutlineInputBorder(), prefixIcon: Icon(Icons.email)),
                    keyboardType: TextInputType.emailAddress,
                    enabled: !isEdit, // disable editing email on update
                    validator: (value) {
                      if (value == null || value.isEmpty) return 'Please enter your email';
                      if (!RegExp(r"^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$").hasMatch(value)) return 'Enter a valid email';
                      return null;
                    },
                  ),
                  const SizedBox(height: 10),
                  if (!isEdit)
                    TextFormField(
                      controller: cubit.passwordController,
                      decoration: const InputDecoration(labelText: "Password", border: OutlineInputBorder(), prefixIcon: Icon(Icons.lock)),
                      obscureText: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) return 'Please enter your password';
                        if (value.length < 6) return 'Password must be at least 6 characters';
                        return null;
                      },
                    ),
                  const SizedBox(height: 20),
                  state.status == Status.loading
                      ? const CircularProgressIndicator()
                      : BtnFromSubmit(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              final name = cubit.nameController.text.trim();
                              final email = cubit.emailController.text.trim();
                              final password = cubit.passwordController.text.trim();
                              if (isEdit) {
                                cubit.updateEmployee(uid: userId!, name: name);
                              } else {
                                cubit.createEmployee(name: name, email: email, password: password);
                              }
                            }
                          },
                          title: isEdit ? 'Update Employee' : 'Create Employee',
                        ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
