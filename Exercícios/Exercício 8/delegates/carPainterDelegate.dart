import 'package:flutter/material.dart';

class CarPainterDelegate extends CustomPainter {
  void _drawWheel(Canvas prCanvas, Offset prPosition, double prSize) {
    Paint vrPaint = Paint();
    vrPaint.style = PaintingStyle.fill;
    vrPaint.color = Colors.black45;

    prCanvas.drawCircle(prPosition, prSize, vrPaint);
  }

  void _drawCarRoof(Canvas prCanvas, Offset prPosition, double prSize) {
    Paint vrPaint = Paint();
    vrPaint.style = PaintingStyle.fill;
    vrPaint.color = Colors.red;

    Rect vrRect = Rect.fromLTRB(prPosition.dx,
        prPosition.dy,
        prPosition.dx + (prSize * 4),
        prPosition.dy + prSize * 2);

    // Teto do carro
    prCanvas.drawRect(vrRect, vrPaint);

    vrPaint.color = Colors.blue;

    Rect vrRectJanela = Rect.fromLTRB(
      vrRect.left + 5,
      vrRect.top + 5,
      vrRect.right - 5,
      vrRect.bottom
    );

    prCanvas.drawRect(vrRectJanela, vrPaint);
  }

  void _drawCarBody(Canvas prCanvas, Offset prPosition, double prSize) {
    Paint vrPaint = Paint();
    vrPaint.style = PaintingStyle.fill;
    vrPaint.color = Colors.red;

    Rect vrRect = Rect.fromLTRB(prPosition.dx,
                                prPosition.dy,
                                prPosition.dx + (prSize * 8),
                                prPosition.dy + prSize * 2);

    prCanvas.drawRect(vrRect, vrPaint);
  }

  @override
  void paint(Canvas canvas, Size size) {
    double vrSize = size.height / 10;

    // Desenha o corpo do carro
    this._drawCarBody(canvas, Offset(vrSize * 1, vrSize * 5), vrSize);

    // Desenha o teto do carro
    this._drawCarRoof(canvas, Offset(vrSize * 3, vrSize * 3), vrSize);

    // Desenha cada uma das rodas
    this._drawWheel(canvas, Offset(vrSize * 3, vrSize * 8), vrSize);
    this._drawWheel(canvas, Offset(vrSize * 7, vrSize * 8), vrSize);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}
