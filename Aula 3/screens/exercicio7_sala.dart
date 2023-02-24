import 'package:flutter/material.dart';
import 'package:flutter_avancado_aula3/widgets/ganaFlagDelegate.dart';

class Exercicio7Sala extends StatelessWidget {
  const Exercicio7Sala({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercício 7"),
      ),
      body: CustomMultiChildLayout(
        delegate: GanaFlagDelegate(),
        children: [
          LayoutId(
              id: 1,
              child: Container(
                color: Colors.red,
              )),
          LayoutId(
              id: 2,
              child: Container(
                color: Colors.amberAccent,
              )),
          LayoutId(
              id: 3,
              child: Container(
                color: Colors.green,
              ))
        ],
      ),
    );
  }
}
