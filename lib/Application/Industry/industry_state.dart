part of 'industry_bloc.dart';

@freezed
class IndustryState with _$IndustryState {
  const factory IndustryState({
    required bool isLoading,
     List<IndustryModel>? industrylist,
     required Option<Either<MainFailure,List<IndustryModel>>> industryFailureOrSuccessOption

  }) = _IndustryState;
   factory IndustryState.initial(){
    return const IndustryState(isLoading: false,
    industryFailureOrSuccessOption: None());

  }

}
