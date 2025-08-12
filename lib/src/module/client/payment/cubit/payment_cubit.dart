import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hr_app/src/API_BCEL_ONE/onpay.dart';
import 'package:hr_app/src/core/enum/enum.dart';

part 'payment_state.dart';
part 'payment_cubit.freezed.dart';

class PaymentCubit extends Cubit<PaymentState> {
  PaymentCubit() : super(PaymentState()) {}

  Future<void> initializePayment({required String docNo, required double totalAmount}) async {
    emit(state.copyWith(status: Status.loading, docNo: docNo, totalAmount: totalAmount));

    try {
      final qrString = generateOnePayQR(
        mcid: "mch667bdd4aaf07a",
        transactionId: docNo,
        invoiceId: docNo,
        terminalId: "001",
        amount: totalAmount.toStringAsFixed(2),
        description: "Odienmall_Order:$docNo",
        expireMinutes: 5,
      );

      emit(state.copyWith(status: Status.qrReady, qrData: qrString));
    } catch (e) {
      emit(state.copyWith(status: Status.error, errorMessage: e.toString()));
    }
  }

  void markPaymentSuccess() {
    emit(state.copyWith(status: Status.success));
  }
}
