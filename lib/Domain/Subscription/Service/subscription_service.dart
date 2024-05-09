import 'package:dartz/dartz.dart';
import 'package:number_one_academy_v2/Domain/Core/Failure/main_failure.dart';
import 'package:number_one_academy_v2/Domain/Subscription/Model/subscription_get.dart';


abstract class SubscriptionService {     
  Future<Either<MainFailure,List<SubscriptionGet>>> subscriptionService(
  
  );
 
}
