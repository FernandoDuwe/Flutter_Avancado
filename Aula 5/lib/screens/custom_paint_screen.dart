import "package:flutter/material.dart";
import "package:flutter_avancado_aula1/delegates/painter_delegate.dart";

class CustomPaintScreen extends StatelessWidget {
  const CustomPaintScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CustomPaint"),
      ),
      body: CustomPaint(
        painter: PainterDelegate(),
      ),
    );
  }
}
