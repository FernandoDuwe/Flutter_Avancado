import 'package:flutter/material.dart';

import 'carAnimatedPainter.dart';

class AnimatedCar extends AnimatedWidget {
  AnimatedCar(Animation<double> prAnimation) : super(listenable: prAnimation);

  @override
  Widget build(BuildContext context) {
    Animation<double> vrAnimation = this.listenable as Animation<double>;

    print("Animação: ${vrAnimation.value}");

    return CustomPaint(
      painter: CarAnimatedPainter(vrAnimation.value),
    );
  }
}