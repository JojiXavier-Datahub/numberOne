import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:number_one_academy_v2/Config/routers.dart';
import 'package:number_one_academy_v2/Domain/Core/Failure/main_failure.dart';
import 'package:number_one_academy_v2/Domain/Payment/Model/payment_model.dart';
import 'package:number_one_academy_v2/Domain/Payment/Service/payment_service.dart';
import 'package:number_one_academy_v2/Utils/toast_urils.dart';
part 'payment_event.dart';
part 'payment_state.dart';
part 'payment_bloc.freezed.dart';


@injectable
class PaymentBloc extends Bloc<PaymentEvent, PaymentState> {
  final PaymentService _paymentService;

  PaymentBloc(this._paymentService) : super(PaymentState.initial()) {
    on<_Payment>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
      ));
      final Either<MainFailure, dynamic> sendOtp =
          await _paymentService.updatePayment(
              couponCode: event.couponCode,
              gstNumber: event.gstNumber,
              productId: event.productId,
              productType: event.productType);

      return sendOtp.fold((error) {
        emit(state.copyWith(isLoading: true, isError: true));
        handleError(
          error: error,
          routeName: Routers.onBoardingphone,
        );
      }, (result) async {
        if (result["status"] ?? false) {
          emit(state.copyWith(isError: false, isLoading: false, status: true));
          // Navigator.push(
          //   event.context,
          //   AppPages.generateRouteSettings(
          //       const RouteSettings(name: Routers.onBoardingOtp)),
          // );

          ToastUtil.show(result["message"] ?? "");
        } else {
          ToastUtil.show(result["message"] ?? "");
          emit(state.copyWith(isError: true, isLoading: false, status: true));
        }
      });
    });
  }
}
