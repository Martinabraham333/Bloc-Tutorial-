import 'package:bloc/bloc.dart';
import 'package:block_tutorial/CounterApp/bloc/counter_event.dart';
import 'package:block_tutorial/CounterApp/bloc/counter_state.dart';
import 'package:flutter/material.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(initState()) {

    on<Increment>((event, emit) {
      return emit(CounterState(count: state.count + 1));
    });

    on<Decrement>((event, emit) {
      return emit(CounterState(count: state.count - 1));
    });

  }
}
