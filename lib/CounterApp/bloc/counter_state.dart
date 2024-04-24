part of 'counter_bloc.dart';

class CounterState {
  final int count;

  CounterState({required this.count});
}

class initState extends CounterState {
  initState() : super(count: 0);
}
