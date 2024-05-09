import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:number_one_academy_v2/Domain/Core/Failure/main_failure.dart';
import 'package:number_one_academy_v2/Domain/Instructor/Model/instructor_model.dart';
import 'package:number_one_academy_v2/Domain/Instructor/Service/instructors_service.dart';
part 'instructor_event.dart';
part 'instructor_state.dart';
part 'instructor_bloc.freezed.dart';

@injectable
class InstructorBloc extends Bloc<InstructorEvent, InstructorState> {
   final InstrotorsService _instructorListService;
  InstructorBloc(this._instructorListService)
      : super(InstructorState.initial()) {
    on<InstructorEvent>((event, emit)  async{
        emit(state.copyWith(
          isLoading: true, instructorFailureOrSuccessOption: none()));
      final Either<MainFailure, List<InstructorModel>> instructorlistOption =
          await _instructorListService.getInstructorList();
     
      inspect(instructorlistOption);
      emit(instructorlistOption.fold(
          (failure) => state.copyWith(
              isLoading: false,
              instructorFailureOrSuccessOption: Some(left(failure))),
          (success) => state.copyWith(
              isLoading: false,
              instructorList: success,
              instructorFailureOrSuccessOption: Some(right(success)))));

    });
  }
}
