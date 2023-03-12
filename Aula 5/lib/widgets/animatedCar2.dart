import 'package:flutter/material.dart';

import 'carAnimatedPainter.dart';

class AnimatedCar2 extends AnimatedWidget {
  AnimatedCar2(Animation<double> prAnimation) : super(listenable: prAnimation);

  Tween<double> pista = Tween<double>(begin: 0, end: 500);

  @override
  Widget build(BuildContext context) {
    Animation<double> vrAnimation = this.listenable as Animation<double>;

    print("Animação: ${vrAnimation.value}");

    return CustomPaint(
      painter: CarAnimatedPainter(pista.evaluate(vrAnimation)),
    );
  }
}