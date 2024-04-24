import 'package:block_tutorial/CounterApp/Screens/Counter_Screen.dart';
import 'package:block_tutorial/CounterApp/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CounterBloc(),
        ),
     
      ],
      child: MaterialApp(
        home: CounterPage(),
      )
    );
  }
}

