import 'package:dartz/dartz.dart';
import 'package:number_one_academy_v2/Domain/Core/Failure/main_failure.dart';


abstract class PaymentService {     
  Future<Either<MainFailure, dynamic>> updatePayment({
   required String gstNumber,
      required String couponCode,
      required String productId,
      required String productType
  });
 
}
