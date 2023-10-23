import "package:flutter/material.dart";
import "package:flutter_avancado_aula1/delegates/multi_child_exercicio7_delegate.dart";

class Exercicio7 extends StatelessWidget {
  const Exercicio7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercício 7"),
      ),
      body: CustomMultiChildLayout(
        delegate: MultiChildExercicio7Delegate(),
        children: [
          LayoutId(
              id: 1,
              child: Container(
                color: Colors.red,
              )),
          LayoutId(
              id: 2,
              child: Container(
                color: Colors.green,
              )),
          LayoutId(
              id: 3,
              child: Container(
                color: Colors.yellow,
              ))
        ],
      ),
    );
  }
}
