import 'package:flutter_bloc/flutter_bloc.dart';

import 'app_event.dart';
import 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState>{
  AppBloc() : super(InitState()) {
    on<IncrementEvent>((event, emit) {
      emit(AppState(counter: state.counter + 1));
    });

    on<DecrementEvent>((event, emit) {
      emit(AppState(counter: state.counter - 1));
    });
  }
}
