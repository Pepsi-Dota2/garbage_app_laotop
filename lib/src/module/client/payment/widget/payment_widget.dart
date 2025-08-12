import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hr_app/src/core/enum/enum.dart';
import 'package:hr_app/src/module/client/payment/cubit/payment_cubit.dart';

class OnePayQRWidget extends StatelessWidget implements AutoRouteWrapper {
  final String docNo;
  final double totalAmount;
  final VoidCallback? onPaymentSuccess;

  const OnePayQRWidget({Key? key, required this.docNo, required this.totalAmount, this.onPaymentSuccess}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => PaymentCubit()..initializePayment(docNo: docNo, totalAmount: totalAmount),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocConsumer<PaymentCubit, PaymentState>(
      listener: (context, state) {
        if (state.status == Status.success) {
          onPaymentSuccess?.call();
        }
      },
      builder: (context, state) {
        final isLoading = state.status == Status.loading;
        final isSuccess = state.status == Status.success;
        final isError = state.status == Status.error;
        final qrData = state.qrData;

        return Center(
          child: Container(
            decoration: BoxDecoration(
              gradient: const LinearGradient(colors: [Color(0xFFa8e063), Color(0xFF56ab2f)], begin: Alignment.topLeft, end: Alignment.bottomRight),
              borderRadius: BorderRadius.circular(24),
              boxShadow: [BoxShadow(color: Colors.green.withOpacity(0.3), blurRadius: 10, offset: const Offset(0, 6))],
            ),
            margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AnimatedSwitcher(
                    duration: const Duration(milliseconds: 600),
                    child: Text(isSuccess ? 'ການຊຳລະສຳເລັດ' : 'ສະແກນ QR ເພື່ອຊຳລະ', key: ValueKey(isSuccess), textAlign: TextAlign.center),
                  ),
                  const SizedBox(height: 28),

                  if (isLoading)
                    Column(
                      children: [
                        const SizedBox(width: 72, height: 72, child: CircularProgressIndicator(strokeWidth: 6)),
                        const SizedBox(height: 16),
                        Text('ກຳລັງສ້າງ QR...', style: theme.textTheme.displayLarge),
                      ],
                    )
                  else if (isError)
                    Column(
                      children: [
                        Icon(Icons.error_outline, size: 72, color: Colors.red.shade400),
                        const SizedBox(height: 16),
                        Text(
                          'ເກີດຂໍ້ຜິດພາດ ກະລຸນາລອງໃໝ່ອີກຄັ້ງ',
                          style: theme.textTheme.displayLarge?.copyWith(color: Colors.red.shade700),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    )
                  else if (qrData != null)
                    Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.network(
                            'https://api.qrserver.com/v1/create-qr-code/?size=250x250&data=${Uri.encodeComponent(qrData)}',
                            width: 250,
                            height: 250,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(height: 28),

                        Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                          color: Colors.grey.shade100,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                            child: Column(
                              children: [
                                _infoRow('ເລກບິນ:', docNo, theme),
                                const SizedBox(height: 8),
                                _infoRow('ຈຳນວນເງິນ:', '₭ ${totalAmount.toStringAsFixed(2)}', theme),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),

                  const SizedBox(height: 36),

                  AnimatedContainer(
                    duration: const Duration(milliseconds: 400),
                    padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
                    decoration: BoxDecoration(
                      color: isSuccess ? Colors.green.shade50 : theme.primaryColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Text(isSuccess ? 'ທ່ານສາມາດປິດໜ້ານີ້ໄດ້ແລ້ວ' : 'ກະລຸນາຢືນຢັນການຊຳລະໂດຍສະແກນ QR ນີ້', textAlign: TextAlign.center),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _infoRow(String label, String value, ThemeData theme) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: theme.textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w600)),
        Text(value, style: theme.textTheme.bodySmall),
      ],
    );
  }
}
