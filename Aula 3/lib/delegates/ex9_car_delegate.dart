import "package:flutter/material.dart";

class Ex9CarDelegate extends CustomPainter {
  double currentPosition = 0;

  Ex9CarDelegate({ required this.currentPosition });

  @override
  void paint(Canvas canvas, Size size) {

    _drawCarBody(canvas, currentPosition, 300);

    _drawCarRoof(canvas, currentPosition + 80, 200);

    _drawCarWindow(canvas, currentPosition + 85, 205);

    _drawWheel(canvas, currentPosition + 50, 410);

    _drawWheel(canvas, currentPosition + 250, 410);
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
  bool shouldRepaint(covariant Ex9CarDelegate oldDelegate) {
    return this.currentPosition != oldDelegate.currentPosition;
  }
}
