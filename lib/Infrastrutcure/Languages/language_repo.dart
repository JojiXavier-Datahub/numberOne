import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:number_one_academy_v2/Domain/Core/Failure/main_failure.dart';
import 'package:number_one_academy_v2/Domain/Core/NetworkServices/network_services.dart';
import 'package:number_one_academy_v2/Domain/Core/api_endpoints.dart';
import 'package:number_one_academy_v2/Domain/Languages/Service/lanugages_service.dart';
import 'package:number_one_academy_v2/Domain/Languages/models/lan_model.dart';
import 'package:dio/dio.dart';
@LazySingleton(as: LanguageService)
class LanguageRepo implements LanguageService {
  final NetworkService _networkService;
  LanguageRepo(this._networkService) {
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
  // @override
  Future<Either<MainFailure, List<LanguageModel>>> getlanguagelist1() async {

    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.languages);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<LanguageModel> languagelist = [];
        for (final raw in response.data) {
          languagelist.add(LanguageModel.fromJson(raw as Map<String, dynamic>));
        }
        print(languagelist);
        return right(languagelist);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
