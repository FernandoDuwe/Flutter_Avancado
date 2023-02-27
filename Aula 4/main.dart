import 'package:flutter/material.dart';
import 'package:flutter_avancado_aula4/main.dart';
import 'package:flutter_avancado_aula4/screens/animatedBuilderScreen.dart';
import 'package:flutter_avancado_aula4/screens/animatedContainerExemplo.dart';
import 'package:flutter_avancado_aula4/screens/animatedCrossFadeScreen.dart';
import 'package:flutter_avancado_aula4/screens/animatedListScreen.dart';
import 'package:flutter_avancado_aula4/screens/animatedSwitcherTest.dart';
import 'package:flutter_avancado_aula4/screens/artigoScreen.dart';
import 'package:flutter_avancado_aula4/screens/aspectRatioScreen.dart';
import 'package:flutter_avancado_aula4/screens/curvedScreen.dart';
import 'package:flutter_avancado_aula4/screens/customMultiChildLayoutScreen.dart';
import 'package:flutter_avancado_aula4/screens/customPaintScreen.dart';
import 'package:flutter_avancado_aula4/screens/customSingleChildLayoutScreen.dart';
import 'package:flutter_avancado_aula4/screens/decoratedBoxTransitionScreen.dart';
import 'package:flutter_avancado_aula4/screens/exercicio1.dart';
import 'package:flutter_avancado_aula4/screens/exercicio10_sala.dart';
import 'package:flutter_avancado_aula4/screens/exercicio11_Sala.dart';
import 'package:flutter_avancado_aula4/screens/exercicio1_sala.dart';
import 'package:flutter_avancado_aula4/screens/exercicio2.dart';
import 'package:flutter_avancado_aula4/screens/exercicio4_sala.dart';
import 'package:flutter_avancado_aula4/screens/exercicio7_sala.dart';
import 'package:flutter_avancado_aula4/screens/exercicio8_sala.dart';
import 'package:flutter_avancado_aula4/screens/exercicio9_sala.dart';
import 'package:flutter_avancado_aula4/screens/fittedBoxScreen.dart';
import 'package:flutter_avancado_aula4/screens/fractionallySizedBoxScreen.dart';
import 'package:flutter_avancado_aula4/screens/fractionallyTeste2.dart';
import 'package:flutter_avancado_aula4/screens/heroExample.dart';
import 'package:flutter_avancado_aula4/screens/homePage.dart';
import 'package:flutter_avancado_aula4/screens/layoutBuilderExample.dart';
import 'package:flutter_avancado_aula4/screens/minhaPrimeiraAnimacaoScreen.dart';
import 'package:flutter_avancado_aula4/screens/orientationBuilderScreen.dart';
import 'package:flutter_avancado_aula4/screens/sliverScreen.dart';
import 'package:flutter_avancado_aula4/screens/teste.dart';


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
        "/animatedContainer": (context) => AnimatedContainerExemplo(),
        "/animatedCrossFade": (context) => AnimatedCrossFadeScreen(),
        "/animatedBuilder": (context) => AnimatedBuilderScreen(),
        "/animatedList": (context) => AnimatedListScreen(),
        "/animatedSwitcher": (context) => AnimatedSwitcherTest(),
        "/articleScreen": (context) => ArtigoScreen(),
        "/aspectRatio": (context) => AspectRatioScreen(),
        "/curves": (context) => CurvedScreen(),
        "/fittedBoxScreen": (context) => FittedBoxScreen(),
        "/customPaintScreen": (context) => CustomPaintScreen(),
        "/decoratedBoxTransitions": (context) => DecoratedBoxTransitionScreen(),
        "/fracSizedBox": (context) => FractionallySizedBoxScreen(),
        "/fracSizedBox2": (context) => FractionallyTeste2(),
        "/exercicio1": (context) => Exercicio1(),
        "/exercicio2": (context) => Exercicio2(),
        "/exercicio1Sala": (context) => Exercicio1Sala(),
        "/exercicio4Sala": (context) => Exercicio4Sala(),
        "/exercicio7Sala": (context) => Exercicio7Sala(),
        "/exercicio8Sala": (context) => Exercicio8Sala(),
        "/exercicio9Sala": (context) => Exercicio9Sala(),
        "/exercicio10Sala": (context) => Exercicio10_Sala(),
        "/exercicio11Sala": (context) => Exercicio11Sala(),
        "/heroScreen": (context) => HeroExample(),
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
