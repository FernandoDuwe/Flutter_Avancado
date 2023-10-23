import 'package:flutter/material.dart';

class GarrafaPainter extends CustomPainter {
  void _desenhaTampaGarrafa(Canvas prCanvas, double prTop, double prLeft) {
    Paint vrPaint = Paint();
    vrPaint.style = PaintingStyle.stroke;
    vrPaint.color = Colors.black26;

    prCanvas.drawRect(Rect.fromLTRB(prLeft, prTop, prLeft + 25, prTop + 10), vrPaint);
  }

  void _desenhaPescocoGarrafa(Canvas prCanvas, double prTop, double prLeft) {
    Paint vrPaint = Paint();
    vrPaint.style = PaintingStyle.fill;
    vrPaint.color = Colors.orange;

    prCanvas.drawRect(Rect.fromLTRB(prLeft, prTop, prLeft + 50, prTop + 20), vrPaint);
  }

  void _desenhaCorpoGarrafa(Canvas prCanvas, double prTop, double prLeft) {
    Paint vrPaint = Paint();
    vrPaint.color = Colors.orange;
    vrPaint.style = PaintingStyle.fill;

    prCanvas.drawRect(
        Rect.fromLTRB(prLeft, prTop, prLeft + 100, prTop + 150), vrPaint);
  }

  @override
  void paint(Canvas canvas, Size size) {
    this._desenhaTampaGarrafa(canvas, 90, 137.5);

    this._desenhaPescocoGarrafa(canvas, 100, 125);

    this._desenhaCorpoGarrafa(canvas, 120, 100);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
