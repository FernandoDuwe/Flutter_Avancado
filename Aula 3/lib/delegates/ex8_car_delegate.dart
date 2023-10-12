import "package:flutter/material.dart";

class Ex8CarDelegate extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    _drawCarBody(canvas, 300, 300);

    _drawCarRoof(canvas, 380, 200);

    _drawCarWindow(canvas, 385, 205);

    _drawWheel(canvas, 350, 410);

    _drawWheel(canvas, 550, 410);
  }

  void _drawCarBody(Canvas canvas, double posX, double posY) {
    Paint paint = Paint();
    paint.style = PaintingStyle.fill;
    paint.color = Colors.red;

    canvas.drawRect(Rect.fromLTRB(posX, posY, posX + 300, posY + 100), paint);
  }

  void _drawCarRoof(Canvas canvas, double posX, double posY) {
    Paint paint = Paint();
    paint.style = PaintingStyle.fill;
    paint.color = Colors.red;

    canvas.drawRect(Rect.fromLTRB(posX, posY, posX + 120, posY + 100), paint);
  }

  void _drawCarWindow(Canvas canvas, double posX, double posY) {
    Paint paint = Paint();
    paint.style = PaintingStyle.fill;
    paint.color = Colors.blueAccent;

    canvas.drawRect(Rect.fromLTRB(posX, posY, posX + 110, posY + 90), paint);
  }

  void _drawWheel(Canvas canvas, double posX, double posY) {
    Paint paint = Paint();
    paint.style = PaintingStyle.fill;
    paint.color = Colors.blueGrey;

    canvas.drawCircle(Offset(posX, posY), 50, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
