import 'package:flutter_bloc/flutter_bloc.dart';
import 'counter.dart';

// Events
abstract class CounterEvent {}

class IncrementCounter extends CounterEvent {}

class DecrementCounter extends CounterEvent {}

// BLoC
class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState(0)) {
    on<IncrementCounter>((event, emit) => emit(CounterState(state.value + 1)));
    on<DecrementCounter>((event, emit) => emit(CounterState(state.value - 1)));
  }
}
