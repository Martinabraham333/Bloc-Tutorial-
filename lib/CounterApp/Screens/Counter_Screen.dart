import 'package:block_tutorial/CounterApp/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              BlocBuilder<CounterBloc, CounterState>(
                builder: (context, state) {
                  return Text(
                    "${state.count}",
                    style: TextStyle(fontSize: 40, color: Colors.black),
                  );
                },
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        color: Colors.blue,
                        child: TextButton(
                            onPressed: () {
                              context.read<CounterBloc>().add(increment());
                            },
                            child: Text(
                              "+",
                              style:
                                  TextStyle(fontSize: 40, color: Colors.white),
                            ))),
                    Container(
                        color: Colors.blue,
                        child: TextButton(
                            onPressed: () {
                              context.read<CounterBloc>().add(decrement());
                            },
                            child: Text(
                              "-",
                              style:
                                  TextStyle(fontSize: 40, color: Colors.white),
                            ))),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
