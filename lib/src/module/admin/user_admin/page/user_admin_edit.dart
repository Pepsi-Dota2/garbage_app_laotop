import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:hr_app/src/core/enum/enum.dart';
import 'package:hr_app/src/core/widget/btn_submit.dart';
import 'package:hr_app/src/core/widget/custom_form_select.dart';
import 'package:hr_app/src/module/admin/user_admin/cubit/user_admin_cubit.dart';

@RoutePage()
class UserAdminEditPage extends StatelessWidget implements AutoRouteWrapper {
  const UserAdminEditPage({super.key, required this.userId});
  final String userId;
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(create: (context) => UserAdminCubit()..fetchUserById(userId), child: this);
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<UserAdminCubit>();
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(title: Text("Edit User")),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BlocBuilder<UserAdminCubit, UserAdminState>(
            builder: (context, state) {
              if (state.status == Status.loading) {
                return Center(child: CircularProgressIndicator());
              } else if (state.status == Status.failure) {
                return Center(child: Text("Failed to load user data"));
              }
              // status success — show form
              return Form(
                key: formKey,
                child: Column(
                  children: [
                    Gap(10),
                    TextFormField(
                      controller: cubit.usernameController,
                      decoration: const InputDecoration(labelText: "user name", border: OutlineInputBorder(), prefixIcon: Icon(Icons.email)),
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your name';
                        }
                        return null;
                      },
                    ),
                    Gap(10),
                    TextFormField(
                      controller: cubit.telController,
                      decoration: const InputDecoration(labelText: "tel", border: OutlineInputBorder(), prefixIcon: Icon(Icons.lock)),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your tel';
                        }
                        if (value.length < 8) {
                          return 'tel must be at least 8 characters';
                        }
                        return null;
                      },
                    ),
                    Gap(10),
                    CustomDropdownFormFieldBuilder(
                      name: 'address',
                      labelText: 'ເມືອງ (District)',
                      hintText: 'ເລືອກເມືອງ (Select District)',
                      onChanged: (value) {
                        cubit.addressController.text = value ?? '';
                      },
                      suffixIcon: IconButton(
                        icon: const Icon(Icons.close),
                        onPressed: () {
                          cubit.addressController.clear();
                        },
                      ),
                      items: VientianeDistrict.values
                          .map((district) => DropdownMenuItem<String>(value: district.laoName, child: Text(district.laoName)))
                          .toList(),
                    ),
                    Gap(10),
                    BtnFromSubmit(
                      onPressed: () async {
                        if (formKey.currentState!.validate()) {
                          await cubit.editUser(
                            id: userId,
                            username: cubit.usernameController.text,
                            userTel: cubit.telController.text,
                            userAddress: cubit.addressController.text,
                          );
                          context.router.pop();
                        }
                      },

                      title: "Update",
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
