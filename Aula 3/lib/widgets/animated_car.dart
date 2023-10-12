import "package:flutter/material.dart";

import "../delegates/ex9_car_delegate.dart";

class AnimatedCar extends AnimatedWidget {
  AnimatedCar(Animation<double> animation) : super(listenable: animation);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
        painter: Ex9CarDelegate(
            currentPosition: (listenable as Animation<double>).value));
  }
}
