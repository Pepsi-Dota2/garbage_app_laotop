import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:hr_app/src/core/enum/enum.dart';
import 'package:hr_app/src/core/router/router.dart';
import 'package:hr_app/src/core/widget/btn_submit.dart';
import 'package:hr_app/src/core/widget/custom_form_select.dart' show CustomDropdownFormFieldBuilder;
import 'package:hr_app/src/core/widget/loading_dialog.dart';
import 'package:hr_app/src/module/auth/cubit/auth_cubit.dart';

@RoutePage()
class RegisterPage extends StatelessWidget implements AutoRouteWrapper {
  const RegisterPage({super.key});
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(create: (_) => AuthCubit(), child: const RegisterPage());
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AuthCubit>();
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state.status == Status.loading) {
          showDialog(context: context, barrierDismissible: false, builder: (context) => const LoadingDialog());
        } else {
          if (Navigator.canPop(context)) Navigator.pop(context);
        }
        if (state.status == Status.success) {
          context.router.replace(AuthRoute());
        }
        if (state.status == Status.failure) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Register failed')));
        }
      },
      builder: (context, state) {
        final cubit = context.read<AuthCubit>();
        return Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: SafeArea(
              child: Form(
                key: formKey,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    children: [
                      Image.network(
                        "https://st3.depositphotos.com/3284149/34960/v/450/depositphotos_349609394-stock-illustration-garbage-collection-bin-washing-bin.jpg",
                        height: 300,
                      ),
                      Text("ລົງຖະບຽນ", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                      Gap(10),
                      TextFormField(
                        controller: cubit.emailController,
                        decoration: const InputDecoration(labelText: "Email", border: OutlineInputBorder(), prefixIcon: Icon(Icons.email)),
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email';
                          }
                          if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
                            return 'Please enter a valid email';
                          }
                          return null;
                        },
                      ),
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
                        controller: cubit.passwordController,
                        decoration: const InputDecoration(labelText: "Password", border: OutlineInputBorder(), prefixIcon: Icon(Icons.lock)),
                        obscureText: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          }
                          if (value.length < 4) {
                            return 'Password must be at least 6 characters';
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
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [Text("For got password?")]),
                      Gap(10),
                      BtnFromSubmit(
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            context.read<AuthCubit>().register(
                              username: cubit.usernameController.text,
                              email: cubit.emailController.text,
                              password: cubit.passwordController.text,
                              userTel: cubit.telController.text,
                              userAddress: cubit.addressController.text,
                            );
                          }
                        },
                        title: "register",
                      ),
                      Column(
                        children: [
                          Gap(20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Don't have an account "),
                              Gap(4),
                              InkWell(
                                onTap: () {
                                  context.router.push(AuthRoute());
                                },
                                child: Text(
                                  "login",
                                  style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
