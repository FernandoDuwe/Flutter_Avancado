import "package:flutter/material.dart";

class SingleChild50Delegate extends SingleChildLayoutDelegate {
  @override
  bool shouldRelayout(covariant SingleChildLayoutDelegate oldDelegate) {
    return true;
  }

  @override
  Size getSize(BoxConstraints constraints) {
    return Size(constraints.maxWidth / 2, constraints.maxHeight / 2);
  }

  @override
  BoxConstraints getConstraintsForChild(BoxConstraints constraints) {
    print(
        "constraintChild height ${constraints.maxHeight / 2} width ${constraints.maxWidth / 2}");

    return BoxConstraints(
        maxHeight: constraints.maxHeight / 2,
        maxWidth: constraints.maxWidth / 2);
  }

  @override
  Offset getPositionForChild(Size size, Size childSize) {
    double x = (size.width / 2);
    double y = (size.height / 2);

    print("position: X ${x} Y ${y}");

    return Offset(x, y);
  }
}
