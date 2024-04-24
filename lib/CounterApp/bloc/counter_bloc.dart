import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(initState()) {
    on<increment>((event, emit) {
      return emit(CounterState(count: state.count + 1));
    });

    on<decrement>((event, emit) {
      return emit(CounterState(count: state.count - 1));
    });
  }
}
