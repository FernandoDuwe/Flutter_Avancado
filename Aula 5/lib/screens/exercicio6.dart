import "package:flutter/material.dart";
import "package:flutter_avancado_aula1/delegates/single_child_exercicio6_delegate.dart";

class Exercicio6 extends StatelessWidget {
  const Exercicio6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercício 6"),
      ),
      body: CustomSingleChildLayout(
        delegate: SingleChildExercicio6Delegate(),
        child: Container(
          color: Colors.lightGreen,
        ),
      ),
    );
  }
}
