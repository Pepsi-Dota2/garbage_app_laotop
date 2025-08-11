import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hr_app/src/core/enum/enum.dart';
import 'package:hr_app/src/core/models/district_model.dart';
import 'package:hr_app/src/core/models/user_model.dart';
import 'package:hr_app/src/module/admin/zone/cubit/zone_admin_cubit.dart';

@RoutePage()
class CreateZonePage extends StatelessWidget implements AutoRouteWrapper {
  const CreateZonePage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    final cubit = ZoneAdminCubit();
    cubit.fetchAllUsers();

    return BlocProvider(create: (context) => cubit, child: this);
  }

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final cubit = context.read<ZoneAdminCubit>();

    return Scaffold(
      appBar: AppBar(title: const Text("Create Zone"), centerTitle: true, elevation: 4),
      body: BlocBuilder<ZoneAdminCubit, ZoneAdminState>(
        builder: (context, state) {
          if (state.status == Status.loading && state.users.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state.status == Status.failure && state.users.isEmpty) {
            return const Center(child: Text('Failed to load users'));
          }

          return Form(
            key: _formKey,
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                TextFormField(
                  controller: cubit.zoneNameController,
                  decoration: const InputDecoration(labelText: 'Zone Name', border: OutlineInputBorder()),
                  validator: (value) => (value == null || value.isEmpty) ? 'Enter zone name' : null,
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: cubit.districtController,
                  decoration: const InputDecoration(labelText: 'District', border: OutlineInputBorder()),
                  validator: (value) => (value == null || value.isEmpty) ? 'Enter district' : null,
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: cubit.populationController,
                  decoration: const InputDecoration(labelText: 'Population', border: OutlineInputBorder()),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) return 'Enter population';
                    final n = int.tryParse(value);
                    if (n == null || n < 0) return 'Enter valid positive number';
                    return null;
                  },
                ),
                const SizedBox(height: 16),

                // User dropdown:
                DropdownButtonFormField<UserModel>(
                  decoration: const InputDecoration(labelText: 'Select User', border: OutlineInputBorder()),
                  value: state.selectedUser,
                  items: state.users.map((user) {
                    return DropdownMenuItem<UserModel>(value: user, child: Text(user.username ?? 'No name'));
                  }).toList(),
                  onChanged: (user) {
                    cubit.selectUser(user);
                  },
                  validator: (value) => value == null ? 'Please select a user' : null,
                ),

                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      final userId = state.selectedUser?.uid;
                      if (userId == null) {
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Please select a user")));
                        return;
                      }

                      final newZone = DistrictModel(
                        id: DateTime.now().millisecondsSinceEpoch,
                        zone_name: cubit.zoneNameController.text.trim(),
                        district: cubit.districtController.text.trim(),
                        population: int.tryParse(cubit.populationController.text.trim()) ?? 0,
                        created_at: DateTime.now(),
                        uid: userId,
                      );

                      cubit.createZone(newZone);
                      context.router.pop();
                    }
                  },
                  child: const Text("Create Zone"),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
