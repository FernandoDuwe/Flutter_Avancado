import "package:flutter/material.dart";
import "package:flutter_avancado_aula1/delegates/ex8_car_delegate.dart";

class Exercicio8 extends StatelessWidget {
  const Exercicio8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercício 8"),
      ),
      body: CustomPaint(
        painter: Ex8CarDelegate(),
      ),
    );
  }
}
