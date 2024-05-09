import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:number_one_academy_v2/Domain/Core/Failure/main_failure.dart';
import 'package:number_one_academy_v2/Domain/Industry/Model/industry_model.dart';
import 'package:number_one_academy_v2/Domain/Industry/Service/industry_service.dart';

part 'industry_event.dart';
part 'industry_state.dart';
part 'industry_bloc.freezed.dart';
@injectable
class IndustryBloc extends Bloc<IndustryEvent, IndustryState> {
     final IndustryListListService _industryListListService;
  IndustryBloc(this._industryListListService) : super(IndustryState.initial()) {
    on<IndustryEvent>((event, emit)  async{
        emit(state.copyWith(
          isLoading: true, industryFailureOrSuccessOption: none()));
      final Either<MainFailure, List<IndustryModel>> industrylistOption =
          await _industryListListService.getindustryLIst();
      log(industrylistOption.toString());
      emit(industrylistOption.fold(
          (failure) => state.copyWith(
              isLoading: false,
              industryFailureOrSuccessOption: Some(left(failure))),
          (success) => state.copyWith(
              isLoading: false,
              industrylist: success,
              industryFailureOrSuccessOption: Some(right(success)))));
   
    });
  }
}
