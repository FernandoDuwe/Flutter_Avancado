import 'package:flutter/material.dart';

class GanaFlagDelegate extends MultiChildLayoutDelegate {
  @override
  void performLayout(Size size) {
    BoxConstraints constraints = BoxConstraints(
        minHeight: 0,
        minWidth: 0,
        maxHeight: (size.height / 3),
        maxWidth: size.width);

    if (hasChild(1)) {
      layoutChild(1, constraints);

      positionChild(1, Offset(0, 0));
    }

    if (hasChild(2)) {
      layoutChild(2, constraints);

      positionChild(2, Offset(0, (size.height / 3)));
    }

    if (hasChild(3)) {
      layoutChild(3, constraints);

      positionChild(3, Offset(0, (size.height / 3) * 2));
    }
  }

  @override
  bool shouldRelayout(MultiChildLayoutDelegate oldDelegate) {
    return true;
  }
}
