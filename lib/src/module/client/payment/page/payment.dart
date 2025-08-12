import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hr_app/src/module/client/payment/cubit/payment_cubit.dart';
import 'package:hr_app/src/module/client/payment/widget/payment_widget.dart';

@RoutePage()
class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<PaymentCubit>().initializePayment(docNo: 'INV123460', totalAmount: 1.00);

    return Scaffold(
      appBar: AppBar(title: const Text("Payment"), centerTitle: true, elevation: 4),
      body: Column(
        children: [
          OnePayQRWidget(
            docNo: 'INV123460',
            totalAmount: 1.00,
            onPaymentSuccess: () {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Payment successful!')));
            },
          ),
        ],
      ),
    );
  }
}
