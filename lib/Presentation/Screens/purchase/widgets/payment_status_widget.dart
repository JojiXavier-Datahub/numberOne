import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class PaymentProcessing extends StatelessWidget {
  const PaymentProcessing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Lottie.asset(
        'assets/lottie/payment_processing.json',
      ),
    ));
  }
}


class PaymentError extends StatelessWidget {
  const PaymentError({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset(
        'assets/lottie/payment_error.json',
      ),
    );
  }
}
