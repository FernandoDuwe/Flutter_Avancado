import 'package:flutter/material.dart';
import 'package:flutter_avancado_aula3/widgets/carPainter.dart';

class Exercicio8Sala extends StatelessWidget {
  const Exercicio8Sala({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercício 8"),
      ),
      body: Container(
        height: 500,
        width: 500,
        child: CustomPaint(
          painter: CarPainter(),
        ),
      ),
    );
  }
}
