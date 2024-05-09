part of 'payment_bloc.dart';

@freezed
class PaymentEvent with _$PaymentEvent {
 const factory PaymentEvent.payment(
      {required String gstNumber,
      required String couponCode,
      required String productId,
      required String productType ,required BuildContext context}) = _Payment;
      
}