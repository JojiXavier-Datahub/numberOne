
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:number_one_academy_v2/Domain/Core/Failure/main_failure.dart';
import 'package:number_one_academy_v2/Domain/Core/NetworkServices/network_services.dart';
import 'package:number_one_academy_v2/Domain/Core/api_endpoints.dart';
import 'package:number_one_academy_v2/Domain/Instructor/Model/instructor_model.dart';
import 'package:number_one_academy_v2/Domain/Instructor/Service/instructors_service.dart';

@LazySingleton(as: InstrotorsService)
class InstructorsRepo implements InstrotorsService {
   final NetworkService _networkService;
  InstructorsRepo(this._networkService) {    
    _networkService.init();
  }

  @override
  Future<Either<MainFailure,List< InstructorModel>>> getInstructorList() async {
    final Either<MainFailure, Response> response =
        await _networkService.getRequest(ApiEndPoints.instructor);
    return await response.fold((error) {
      return left(error);
    }, (result) async {
      final List<InstructorModel> instructorlist = [];
        for (final raw in result.data) {
          instructorlist.add(InstructorModel.fromJson(raw as Map<String, dynamic>));
        }
      return right(instructorlist);

     
    });
  }
  
}