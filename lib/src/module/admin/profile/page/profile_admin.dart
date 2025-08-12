import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hr_app/src/core/enum/enum.dart';
import 'package:hr_app/src/core/router/router.dart';
import 'package:hr_app/src/module/admin/profile/cubit/profile_admin_cubit.dart';

@RoutePage()
class ProfileAdminPage extends StatelessWidget implements AutoRouteWrapper {
  const ProfileAdminPage({super.key});
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(create: (context) => ProfileAdminCubit(), child: this);
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ProfileAdminCubit>();

    return Scaffold(
      appBar: AppBar(title: const Text("Profile"), centerTitle: true, elevation: 4),
      body: BlocConsumer<ProfileAdminCubit, ProfileAdminState>(
        listener: (context, state) {
          if (state.status == Status.success) {
            context.router.replace(AuthRoute());
          }
          if (state.status == Status.failure) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("fail")));
          }
        },
        builder: (context, state) {
          return Column(
            children: [
              InkWell(
                onTap: () {
                  cubit.logout();
                },
                child: ListTile(title: Text('Sign Out'), trailing: Icon(Icons.logout)),
              ),
            ],
          );
        },
      ),
    );
  }
}
