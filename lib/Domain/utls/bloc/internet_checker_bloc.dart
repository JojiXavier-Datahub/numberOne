import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'internet_checker_event.dart';
part 'internet_checker_state.dart';
part 'internet_checker_bloc.freezed.dart';

class InternetCheckerBloc extends Bloc<InternetCheckerEvent, InternetCheckerState> {
  InternetCheckerBloc() : super(_Initial()) {
    on<InternetCheckerEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
