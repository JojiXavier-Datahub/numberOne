part of 'language_bloc.dart';

@freezed
class LanguageState with _$LanguageState {
  const factory LanguageState({
    required bool isLoading,
     List<LanguageModel>? languages,
     required Option<Either<MainFailure,List<LanguageModel>>> languageFailureOrSuccessOption

  }) = _LanguageState;
  factory LanguageState.initial(){
    return const LanguageState(isLoading: false,
    languageFailureOrSuccessOption: None());

  }
}
