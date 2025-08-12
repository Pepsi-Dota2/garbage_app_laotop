part of 'payment_cubit.dart';

@freezed
class PaymentState with _$PaymentState {
  const factory PaymentState({@Default(Status.initial) Status status, String? qrData, String? errorMessage, String? docNo, double? totalAmount}) =
      _PaymentState;
}
