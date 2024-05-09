import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:number_one_academy_v2/Domain/Core/Failure/main_failure.dart';
import 'package:number_one_academy_v2/Domain/Core/NetworkServices/network_services.dart';
import 'package:number_one_academy_v2/Domain/Core/api_endpoints.dart';
import 'package:number_one_academy_v2/Domain/Payment/Model/payment_model.dart';
import 'package:number_one_academy_v2/Domain/Payment/Service/payment_service.dart';

@LazySingleton(as: PaymentService)
class PaymentRepo implements PaymentService {
  final NetworkService _networkService;
  PaymentRepo(this._networkService) {
    _networkService.init();
  }

  @override
  Future<Either<MainFailure, dynamic>> updatePayment(
      {required String gstNumber,
      required String couponCode,
      required String productId,
      required String productType}) async {
    final Either<MainFailure, Response> response =
        await _networkService.postRequest(ApiEndPoints.payment, {
      "gstNumber": gstNumber,
      "couponCode": couponCode,
      "paymentChannel": "RAZORPAY",
      "transactionItems": [
        {"productId": productId, "productType": productType}
      ]
    });
    return await response.fold((error) {
      return left(error);
    }, (result) async {
      PaymentModel paymentModel = PaymentModel.fromJson(result.data);

      return right(paymentModel);
    });
  }
}
