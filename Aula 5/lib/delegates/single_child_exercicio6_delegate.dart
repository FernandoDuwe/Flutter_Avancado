import "package:flutter/material.dart";

class SingleChildExercicio6Delegate extends SingleChildLayoutDelegate {
  @override
  bool shouldRelayout(covariant SingleChildLayoutDelegate oldDelegate) {
    return true;
  }

  @override
  Size getSize(BoxConstraints constraints) {
    return Size(constraints.maxWidth, constraints.maxHeight);
  }

  @override
  BoxConstraints getConstraintsForChild(BoxConstraints constraints) {
    return BoxConstraints(
      maxWidth: constraints.maxWidth / 2,
      maxHeight: constraints.maxHeight / 2
    );
  }

  @override
  Offset getPositionForChild(Size size, Size childSize) {
    double width = (size.width / 2) - (childSize.width / 2);
    double height = (size.height / 2) - (childSize.height / 2);

    return Offset(width, height);
  }
}