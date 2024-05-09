import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:number_one_academy_v2/Domain/Core/Failure/main_failure.dart';
import 'package:number_one_academy_v2/Domain/Subscription/Model/subscription_get.dart';
import 'package:number_one_academy_v2/Domain/Subscription/Service/subscription_service.dart';

part 'subscription_event.dart';
part 'subscription_state.dart';
part 'subscription_bloc.freezed.dart';

@injectable

class SubscriptionBloc extends Bloc<SubscriptionEvent, SubscriptionState> {
    final SubscriptionService _subscriptionService;

  SubscriptionBloc(this._subscriptionService) : super(SubscriptionState.initial()) {
     on<_SubscriptionGet>((event, emit) async {
      emit(state.copyWith(
          isLoading: true, subscriptionFailureOrSuccessOption: none()));
      final Either<MainFailure, List<SubscriptionGet>> subscriptionOption =
          await _subscriptionService.subscriptionService();
      log(subscriptionOption.toString());
      emit(subscriptionOption.fold(
          (failure) => state.copyWith(
              isLoading: false,
              subscriptionFailureOrSuccessOption: Some(left(failure))),
          (success) => state.copyWith(
              isLoading: false,
              subscriptionget: success,
              subscriptionFailureOrSuccessOption: Some(right(success)))));
    });
  }
}
