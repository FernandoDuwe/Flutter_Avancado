import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Exercicio4Sala extends StatelessWidget {
  const Exercicio4Sala({Key? key}) : super(key: key);

  Widget Internal_GetSemaforoItem(Color prColor) {
    return Container(
      height: 64,
      width: 64,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
        color: prColor
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercício 4"),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return ListView(
            scrollDirection: (constraints.maxHeight < 210 ? Axis.horizontal : Axis.vertical),
            children: [
              this.Internal_GetSemaforoItem(Colors.red),
              this.Internal_GetSemaforoItem(Colors.yellow),
              this.Internal_GetSemaforoItem(Colors.greenAccent)
            ],
          );
        },
      ),
    );
  }
}
