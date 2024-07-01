import 'package:bloc/bloc.dart';
import 'package:counter_bloc/bloc/counter_event.dart';
import 'package:counter_bloc/bloc/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState()) {
    on<AddCounter>(_increament);
    on<RemoveCounter>(_decreament);
  }
  void _increament(AddCounter event, Emitter<CounterState> emit) {
    emit(state.copyWith(value: state.value + 1));
  }

  void _decreament(RemoveCounter event, Emitter<CounterState> emit) {
    emit(state.copyWith(value: state.value - 1));
  }
}
