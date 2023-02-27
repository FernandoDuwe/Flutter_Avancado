import 'package:flutter/material.dart';
import 'dart:math';

class SenoCurve extends Curve {
    final double count;

    SenoCurve({required this.count});

    @override
  double transformInternal(double t) {
      var val = sin(count * 2 * pi * t) * 0.5 + 0.5;
      print(t);
      return val; //f(x)
  }
}