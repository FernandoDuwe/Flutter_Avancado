import 'package:exercicio_21/screens/home_screen.dart';
import 'package:exercicio_21/stores/calc_store.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider<CalcStore>(
      create: (context) => CalcStore(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(useMaterial3: true),
        home: HomeScreen(),
      ),
    );
  }
}
