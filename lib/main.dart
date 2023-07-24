import 'package:flutter/material.dart';
import 'package:hello_bloc/features/counter/domain/counter_cubit.dart';
import 'package:hello_bloc/features/counter/presentation/counter_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const CounterApp());
}

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const CounterPage(title: 'Flutter Demo Home Page'),
      home: BlocProvider(
        create: (_) => CounterCubit(),
        child: const CounterPage(title: 'Flutter Bloc'),
      ),
    );
  }
}
