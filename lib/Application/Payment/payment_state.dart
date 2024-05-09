part of 'payment_bloc.dart';

@freezed
class PaymentState with _$PaymentState {
    const factory PaymentState(
    {required bool isLoading, required bool isError,
    bool? status,
     String? phoneNumber, 
     String? message,
    
     PaymentModel? paymentModel,
   }
  ) = _PaymentState;
  factory PaymentState.initial() {
    return const PaymentState(
      status: true,
      isError: false,isLoading: false);
  }
}
