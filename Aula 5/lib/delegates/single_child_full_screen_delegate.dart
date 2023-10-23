import "package:flutter/material.dart";

class SingleChildFullScreenDelegate extends SingleChildLayoutDelegate {
  @override
  bool shouldRelayout(covariant SingleChildFullScreenDelegate oldDelegate) {
    return true;
  }

  @override
  Size getSize(BoxConstraints constraints) {
    return Size(constraints.maxWidth, constraints.maxHeight);
  }

  @override
  BoxConstraints getConstraintsForChild(BoxConstraints constraints) {
    return constraints;
  }

  @override
  Offset getPositionForChild(Size size, Size childSize) {
    return Offset(0, 0);
  }
}