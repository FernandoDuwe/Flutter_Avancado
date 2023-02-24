import 'package:flutter/material.dart';
import 'package:flutter_avancado_aula3/widgets/garrafaPainter.dart';

class CustomPaintScreen extends StatelessWidget {
  const CustomPaintScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CustomPaint"),
      ),
      body: Container(
        height: 300,
        width: 300,
        child: CustomPaint(
          painter: GarrafaPainter(),
        ),
      ),
    );
  }
}
