import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:hr_app/src/core/enum/enum.dart';
import 'package:hr_app/src/core/router/router.dart';
import 'package:hr_app/src/core/widget/loading_dialog.dart';
import 'package:hr_app/src/module/auth/cubit/auth_cubit.dart';

@RoutePage()
class AuthPage extends StatelessWidget implements AutoRouteWrapper {
  const AuthPage({super.key});
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(create: (context) => AuthCubit(), child: this);
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    final cubit = context.read<AuthCubit>();
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocListener<AuthCubit, AuthState>(
        listener: (context, state) {
          if (state.status == Status.loading) {
            showDialog(context: context, barrierDismissible: false, builder: (context) => const LoadingDialog());
          } else {
            if (Navigator.canPop(context)) Navigator.pop(context);
          }
          if (state.status == Status.success) {
            context.router.replace(DashboardRoute());
          }
          if (state.status == Status.failure) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Login failed')));
          }
        },
        child: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Form(
                key: formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      "https://st3.depositphotos.com/3284149/34960/v/450/depositphotos_349609394-stock-illustration-garbage-collection-bin-washing-bin.jpg",
                      height: 300,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(height: 300, color: Colors.grey[300], child: const Icon(Icons.image, size: 100));
                      },
                    ),
                    const Gap(20),
                    const Text("ເຂົ້າສູ່ລະບົບ", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                    const Gap(20),

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
                    const Gap(16),
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
                    const Gap(10),

                    // Forgot Password
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [TextButton(onPressed: () {}, child: const Text("Forgot password?"))],
                    ),
                    const Gap(20),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            final email = cubit.emailController.text.trim();
                            final password = cubit.passwordController.text.trim();
                            context.read<AuthCubit>().login(email, password);
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                        ),
                        child: const Text(
                          "Login",
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ),
                    ),
                    const Gap(30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Don't have an account? "),
                        InkWell(
                          onTap: () {
                            // context.router.push(const RegisterRoute());
                          },
                          child: Text(
                            "Sign up",
                            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
