part of 'instructor_bloc.dart';

@freezed
class InstructorState with _$InstructorState {
  const factory InstructorState({
    required bool isLoading,
     List<InstructorModel>? instructorList,
     required Option<Either<MainFailure,List<InstructorModel>>> instructorFailureOrSuccessOption

  }) = _InstructorState;
   factory InstructorState.initial(){
    return const InstructorState(isLoading: false,
    instructorFailureOrSuccessOption: None());

  }

}
