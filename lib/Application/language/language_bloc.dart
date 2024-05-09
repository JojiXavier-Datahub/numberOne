import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:number_one_academy_v2/Domain/Core/Failure/main_failure.dart';

import '../../Domain/Languages/Service/lanugages_service.dart';
import '../../Domain/Languages/models/lan_model.dart';

part 'language_bloc.freezed.dart';
part 'language_event.dart';
part 'language_state.dart';

@injectable
class LanguageBloc extends Bloc<LanguageEvent, LanguageState> {
  final LanguageService _languageService;
  LanguageBloc(this._languageService) : super(LanguageState.initial()) {
    on<_GetLanguageList>((event, emit) async {
      emit(state.copyWith(
          isLoading: true, languageFailureOrSuccessOption: none()));
      final Either<MainFailure, List<LanguageModel>> languagesOption =
          await _languageService.getlanguagelist();
      log(languagesOption.toString());
      emit(languagesOption.fold(
          (failure) => state.copyWith(
              isLoading: false,
              languageFailureOrSuccessOption: Some(left(failure))),
          (success) => state.copyWith(
              isLoading: false,
              languages: success,
              languageFailureOrSuccessOption: Some(right(success)))));
    });
  }
}
