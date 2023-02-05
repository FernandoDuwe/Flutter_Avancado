import 'package:flutter/material.dart';
import 'package:flutter_avancado/screens/exercicio2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => Exercicio2()
      },
      initialRoute: "/",
    );
  }
}
