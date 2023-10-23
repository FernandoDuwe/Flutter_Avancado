import "package:flutter/material.dart";

class Exercicio4 extends StatelessWidget {
  final List<Widget> list = [
    Icon(
      Icons.ac_unit_outlined,
      color: Colors.lightBlueAccent,
      size: 64,
    ),
    Icon(Icons.sunny, color: Colors.yellow, size: 64,),
    Icon(
      Icons.accessibility_new_sharp,
      color: Colors.grey,
      size: 64,
    )
  ];

  Exercicio4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercício 4"),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          print(constraints);

          if (constraints.maxHeight > 200)
            return Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: list,
            );

          return Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: list,
          );
        },
      ),
    );
  }
}
