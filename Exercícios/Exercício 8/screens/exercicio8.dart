import 'package:flutter/material.dart';

import '../delegates/carPainterDelegate.dart';

class Exercicio8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercício 8"),
      ),
      body: Center(
        child: LayoutBuilder(
          builder: (p0, p1) {
            double vrSize = p1.maxHeight;

            if (vrSize > p1.maxWidth)
              vrSize = p1.maxWidth;

            return Container(
              height: vrSize,
              width: vrSize,
              child: CustomPaint(
                painter: CarPainterDelegate(),
              ),
            );
          },
        ),
      ),
    );
  }
}
