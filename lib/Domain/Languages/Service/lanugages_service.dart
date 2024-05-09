import 'package:number_one_academy_v2/Domain/Core/Failure/main_failure.dart';
import 'package:number_one_academy_v2/Domain/Languages/models/lan_model.dart';
import 'package:dartz/dartz.dart';

abstract class LanguageService{
  Future<Either<MainFailure,List<LanguageModel>>>  getlanguagelist();



}