import 'package:flutter/material.dart';
import 'package:flutter_avancado_aula3/main.dart';
import 'package:flutter_avancado_aula3/screens/animatedBuilderScreen.dart';
import 'package:flutter_avancado_aula3/screens/artigoScreen.dart';
import 'package:flutter_avancado_aula3/screens/aspectRatioScreen.dart';
import 'package:flutter_avancado_aula3/screens/curvedScreen.dart';
import 'package:flutter_avancado_aula3/screens/customMultiChildLayoutScreen.dart';
import 'package:flutter_avancado_aula3/screens/customPaintScreen.dart';
import 'package:flutter_avancado_aula3/screens/customSingleChildLayoutScreen.dart';
import 'package:flutter_avancado_aula3/screens/exercicio1.dart';
import 'package:flutter_avancado_aula3/screens/exercicio1_sala.dart';
import 'package:flutter_avancado_aula3/screens/exercicio2.dart';
import 'package:flutter_avancado_aula3/screens/exercicio4_sala.dart';
import 'package:flutter_avancado_aula3/screens/exercicio7_sala.dart';
import 'package:flutter_avancado_aula3/screens/exercicio8_sala.dart';
import 'package:flutter_avancado_aula3/screens/exercicio9_sala.dart';
import 'package:flutter_avancado_aula3/screens/fittedBoxScreen.dart';
import 'package:flutter_avancado_aula3/screens/fractionallySizedBoxScreen.dart';
import 'package:flutter_avancado_aula3/screens/fractionallyTeste2.dart';
import 'package:flutter_avancado_aula3/screens/homePage.dart';
import 'package:flutter_avancado_aula3/screens/layoutBuilderExample.dart';
import 'package:flutter_avancado_aula3/screens/minhaPrimeiraAnimacaoScreen.dart';
import 'package:flutter_avancado_aula3/screens/orientationBuilderScreen.dart';
import 'package:flutter_avancado_aula3/screens/sliverScreen.dart';
import 'package:flutter_avancado_aula3/screens/teste.dart';


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
        "/animatedBuilder": (context) => AnimatedBuilderScreen(),
        "/articleScreen": (context) => ArtigoScreen(),
        "/aspectRatio": (context) => AspectRatioScreen(),
        "/curves": (context) => CurvedScreen(),
        "/fittedBoxScreen": (context) => FittedBoxScreen(),
        "/customPaintScreen": (context) => CustomPaintScreen(),
        "/fracSizedBox": (context) => FractionallySizedBoxScreen(),
        "/fracSizedBox2": (context) => FractionallyTeste2(),
        "/exercicio1": (context) => Exercicio1(),
        "/exercicio2": (context) => Exercicio2(),
        "/exercicio1Sala": (context) => Exercicio1Sala(),
        "/exercicio4Sala": (context) => Exercicio4Sala(),
        "/exercicio7Sala": (context) => Exercicio7Sala(),
        "/exercicio8Sala": (context) => Exercicio8Sala(),
        "/exercicio9Sala": (context) => Exercicio9Sala(),
        "/minhaPrimeiraAnimacao": (context) => MinhaPrimeiraAnimacaoScreen(),
        "/teste": (context) => TesteScreen(),
        "/layoutBuilder": (context) => LayoutBuilderExample(),
        "/orientationBuilder": (context) => OrientationBuilderScreen(),
        "/customSingleChildLayout": (context) => CustomSingleChildLayoutScreen(),
        "/customMultiChildLayout": (context) => CustomMultiChildLayoutScreen(),
        "/sliverList": (context) => SliverSceen(),
      },
    );
  }
}
