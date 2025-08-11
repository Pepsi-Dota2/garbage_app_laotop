import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hr_app/src/core/enum/enum.dart';
import 'package:hr_app/src/core/router/router.dart';
import 'package:hr_app/src/module/admin/user/cubit/user_admin_cubit.dart';

@RoutePage()
class UserAdminPage extends StatelessWidget implements AutoRouteWrapper {
  const UserAdminPage({super.key});
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => UserAdminCubit()
        ..getAllUsers()
        ..fetchAllUsers(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ລູກຄ້າ')),
      body: BlocBuilder<UserAdminCubit, UserAdminState>(
        builder: (context, state) {
          if (state.status == Status.loading) {
            return Center(child: CircularProgressIndicator(strokeWidth: 3));
          }
          return ListView.builder(
            itemCount: state.users.length,
            itemBuilder: (BuildContext context, int index) {
              final user = state.users[index];
              return ListTile(
                leading: const Icon(Icons.person),
                title: Text("ຊຶ່ : ${user.username}"),
                subtitle: Text("ເບີໂທ : ${user.user_tel}"),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: () {
                        context.router.push(UserAdminEditRoute(userId: user.uid));
                      },
                      icon: Icon(Icons.edit, color: Colors.amber),
                    ),
                    IconButton(
                      onPressed: () async {
                        final result = await showOkCancelAlertDialog(
                          context: context,
                          title: 'Confirm Delete',
                          message: 'Are you sure you want to delete this user?',
                          okLabel: 'Delete',
                          cancelLabel: 'Cancel',
                        );

                        if (result == OkCancelResult.ok) {
                          final success = await context.read<UserAdminCubit>().deleteUser(user.uid);
                          if (!success) {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Failed to delete user')));
                          }
                        }
                      },
                      icon: Icon(Icons.delete, color: Colors.red),
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
