import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobx_example/screens/home_screen.dart';
import 'package:mobx_example/stores/counter_store.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider<CounterStore>(
      create: (context) => CounterStore(),
      child: Shortcuts(
        shortcuts: {
          LogicalKeySet(LogicalKeyboardKey.select): ActivateIntent()
        },
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark(
            useMaterial3: true
          ),
          home: HomeScreen(),
        ),
      ),
    );
  }
}
