import 'package:dartz/dartz.dart';
import 'package:number_one_academy_v2/Domain/Core/Failure/main_failure.dart';
import 'package:number_one_academy_v2/Domain/Industry/Model/industry_model.dart';
abstract class IndustryListListService {
  
  Future<Either<MainFailure,List< IndustryModel>>> getindustryLIst();
}
