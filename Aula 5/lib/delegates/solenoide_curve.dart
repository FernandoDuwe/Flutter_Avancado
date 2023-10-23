import "dart:math";

import "package:flutter/material.dart";

class SolenoideCurve extends Curve {
  double count = 0;

  SolenoideCurve({ required this.count });

  @override
  double transformInternal(double t) {
    var val = sin(count * 2 * pi * t) * 0.5 + 0.5;

    print(t);

    return val; //f(x)
  }
}