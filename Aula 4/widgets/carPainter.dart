import 'package:flutter/material.dart';

class CarPainter extends CustomPainter {

  void _desenhaCorpoCarro(Canvas prCanvas, Offset prOffset) {
    Paint vrPaint = Paint();
    vrPaint.style = PaintingStyle.fill;
    vrPaint.color = Colors.red;

    prCanvas.drawRect(Rect.fromLTRB(prOffset.dx, prOffset.dy, prOffset.dx + 300, prOffset.dy + 100), vrPaint);
  }

  void _desenhaTetoCarro(Canvas prCanvas, Offset prOffset) {
    Paint vrPaint = Paint();
    vrPaint.style = PaintingStyle.fill;
    vrPaint.color = Colors.red;

    prCanvas.drawRect(Rect.fromLTRB(prOffset.dx, prOffset.dy, prOffset.dx + 150, prOffset.dy + 100), vrPaint);

    this._desenhaJanelas(prCanvas, prOffset);
  }

  void _desenhaJanelas(Canvas prCanvas, Offset prOffset) {
    Paint vrPaint = Paint();
    vrPaint.color = Colors.lightBlueAccent;
    vrPaint.style = PaintingStyle.fill;

    prCanvas.drawRect(Rect.fromLTRB(prOffset.dx + 3, prOffset.dy + 3, prOffset.dx + 146, prOffset.dy + 100), vrPaint);
  }

  void _desenhaRoda(Canvas prCanvas, Offset prOffset) {
    Paint vrPaint = Paint();
    vrPaint.style = PaintingStyle.stroke;
    vrPaint.strokeWidth = 5;
    vrPaint.color = Colors.black26;

    prCanvas.drawCircle(prOffset, 30, vrPaint);
  }

  @override
  void paint(Canvas canvas, Size size) {
    this._desenhaCorpoCarro(canvas, Offset(250, 250));

    // primeira roda
    this._desenhaRoda(canvas, Offset(280, 382));

    // segunda roda
    this._desenhaRoda(canvas, Offset(520, 382));

    this._desenhaTetoCarro(canvas, Offset(320, 150));
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}