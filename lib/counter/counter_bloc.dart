import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(InitialState()) {
    on<Increment>((event, emit) {
      final currentStateValue = state.count;
      final incrementValue = currentStateValue + 1;
      emit(CounterState(count: incrementValue));
    });
    on<Decrement>((event, emit) {
      final currentStateValue = state.count;
      final decrementValue = currentStateValue + 1;
      emit(CounterState(count: decrementValue));
    });
  }
}
