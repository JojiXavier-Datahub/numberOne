part of 'subscription_bloc.dart';

@freezed
class SubscriptionState with _$SubscriptionState {
   const factory SubscriptionState({
    required bool isLoading,
     List<SubscriptionGet>? subscriptionget,
     required Option<Either<MainFailure,List<SubscriptionGet>>> subscriptionFailureOrSuccessOption

  }) = _SubscriptionState;
  factory SubscriptionState.initial(){
    return const SubscriptionState(isLoading: false,
    subscriptionFailureOrSuccessOption: None());

  }
}
