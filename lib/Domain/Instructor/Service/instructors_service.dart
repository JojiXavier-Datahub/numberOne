import 'package:dartz/dartz.dart';
import 'package:number_one_academy_v2/Domain/Core/Failure/main_failure.dart';
import 'package:number_one_academy_v2/Domain/Instructor/Model/instructor_model.dart';


abstract class InstrotorsService {

Future<Either<MainFailure,List<InstructorModel>>> getInstructorList();}

