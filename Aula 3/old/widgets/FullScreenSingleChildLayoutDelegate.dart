import 'package:flutter/material.dart';

class FullScreenChildLayoutDelegate extends SingleChildLayoutDelegate {
  int contador = 0;

  @override
  BoxConstraints getConstraintsForChild(BoxConstraints constraints) {
    return BoxConstraints(
      minHeight: constraints.minHeight,
      maxHeight: constraints.maxHeight,
      minWidth: constraints.minWidth,
      maxWidth: (constraints.maxWidth / 2)
    );
  }

  @override
  Offset getPositionForChild(Size size, Size childSize) {
    // TODO: implement getPositionForChild
    return Offset((size.width / 2) - (childSize.width / 2), 0);
  }

  @override
  bool shouldRelayout(covariant SingleChildLayoutDelegate oldDelegate) {
    return true;
  }

}