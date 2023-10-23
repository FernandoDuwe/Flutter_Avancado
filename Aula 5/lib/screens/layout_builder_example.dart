import "package:flutter/material.dart";

class LayoutBuilderExample extends StatelessWidget {
  const LayoutBuilderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LayoutBuilder"),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          bool larguraMaiorAltura =
              (constraints.maxWidth > constraints.maxHeight);

          double width = constraints.maxWidth / 2;
          double height = constraints.maxHeight / 2;

          if (width < 500) {
            width = constraints.maxWidth;
            height = constraints.maxHeight;
          }

          return Center(
              child: Container(
            alignment: Alignment.center,
            color: (larguraMaiorAltura ? Colors.red : Colors.green),
            height: height,
            width: width,
            child: Text((larguraMaiorAltura
                ? "Largura maior que altura"
                : "Altura maior que largura")),
          ));
        },
      ),
    );
  }
}
