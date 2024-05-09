import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:number_one_academy_v2/Domain/Core/Failure/main_failure.dart';
import 'package:number_one_academy_v2/Domain/Core/NetworkServices/network_services.dart';
import 'package:number_one_academy_v2/Domain/Core/api_endpoints.dart';
import 'package:number_one_academy_v2/Domain/Industry/Model/industry_model.dart';
import 'package:number_one_academy_v2/Domain/Industry/Service/industry_service.dart';

@LazySingleton(as: IndustryListListService)
class IndustryListRepo implements IndustryListListService {
  final NetworkService _networkService;
  IndustryListRepo(this._networkService) {    
    _networkService.init();
  }

  @override
  Future<Either<MainFailure,List< IndustryModel>>> getindustryLIst() async {
    final Either<MainFailure, Response> response =
        await _networkService.getRequest(ApiEndPoints.industry);
    return await response.fold((error) {
      return left(error);
    }, (result) async {
      final List<IndustryModel> industryLIst = [];
        for (final raw in result.data) {
          industryLIst.add(IndustryModel.fromJson(raw as Map<String, dynamic>));
        }
      return right(industryLIst);

     
    });
  }
}
