import "package:flutter/material.dart";

class PainterDelegate extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    // Desenhar um círculo azul escuro
    Paint paint = Paint();
    paint.style = PaintingStyle.fill;
    paint.color = Colors.blueGrey;

    canvas.drawCircle(Offset(150, 150), 100, paint);

    // Desenhar uma linha vermelha
    Paint paintLinha = Paint();
    paintLinha.style = PaintingStyle.fill;
    paintLinha.color = Colors.red;

    canvas.drawLine(Offset(150, 150), Offset(250, 250), paintLinha);

    // Desenhar um quadrado
    Paint paintQuadrado = Paint();
    paintQuadrado.style = PaintingStyle.stroke;
    paintQuadrado.color = Colors.yellow;

    canvas.drawRect(Rect.fromLTRB(250, 250, 400, 400), paintQuadrado);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
  
}