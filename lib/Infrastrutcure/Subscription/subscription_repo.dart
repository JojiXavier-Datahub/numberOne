import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:number_one_academy_v2/Domain/Core/Failure/main_failure.dart';
import 'package:number_one_academy_v2/Domain/Core/NetworkServices/network_services.dart';
import 'package:number_one_academy_v2/Domain/Core/api_endpoints.dart';
import 'package:number_one_academy_v2/Domain/Languages/Service/lanugages_service.dart';
import 'package:number_one_academy_v2/Domain/Languages/models/lan_model.dart';
import 'package:dio/dio.dart';
import 'package:number_one_academy_v2/Domain/Subscription/Model/subscription_get.dart';
import 'package:number_one_academy_v2/Domain/Subscription/Service/subscription_service.dart';
@LazySingleton(as: SubscriptionService)
class SubscriptionRepo implements SubscriptionService {
  final NetworkService _networkService;
  SubscriptionRepo(this._networkService) {
    _networkService.init();
    
  }

  @override
  Future<Either<MainFailure, List<LanguageModel>>> getlanguagelist() async {
    final Either<MainFailure, Response> response =
        await _networkService.getRequest(ApiEndPoints.languages );
    return await response.fold((error) {
      return left(error);
    }, (result) async {
      final List<LanguageModel> languagelist = [];
        for (final raw in result.data) {
          languagelist.add(LanguageModel.fromJson(raw as Map<String, dynamic>));
        }
      return right(languagelist);
    });
  }
  
  @override
  Future<Either<MainFailure, List<SubscriptionGet>>> subscriptionService() async{
     final Either<MainFailure, Response> response =
        await _networkService.getRequest(ApiEndPoints.subscriptionGet );
    return await response.fold((error) {
      return left(error);
    }, (result) async {
      final List<SubscriptionGet> subscriptionGet = [];
        for (final raw in result.data) {
          subscriptionGet.add(SubscriptionGet.fromJson(raw as Map<String, dynamic>));
        }
      return right(subscriptionGet);
    });

   
  }
 
}
