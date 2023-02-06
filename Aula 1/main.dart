import 'package:flutter/material.dart';
import 'package:flutteravanc_aula1/main.dart';
import 'package:flutteravanc_aula1/screens/aspectRatioScreen.dart';
import 'package:flutteravanc_aula1/screens/exercicio1.dart';
import 'package:flutteravanc_aula1/screens/exercicio1_sala.dart';
import 'package:flutteravanc_aula1/screens/exercicio2.dart';
import 'package:flutteravanc_aula1/screens/fittedBoxScreen.dart';
import 'package:flutteravanc_aula1/screens/fractionallySizedBoxScreen.dart';
import 'package:flutteravanc_aula1/screens/fractionallyTeste2.dart';
import 'package:flutteravanc_aula1/screens/homePage.dart';
import 'package:flutteravanc_aula1/screens/teste.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => HomePage(),
        "/aspectRatio": (context) => AspectRatioScreen(),
        "/fittedBoxScreen": (context) => FittedBoxScreen(),
        "/fracSizedBox": (context) => FractionallySizedBoxScreen(),
        "/fracSizedBox2": (context) => FractionallyTeste2(),
        "/exercicio1": (context) => Exercicio1(),
        "/exercicio2": (context) => Exercicio2(),
        "/exercicio1Sala": (context) => Exercicio1Sala(),
        "/teste": (context) => TesteScreen()
      },
    );
  }
}
