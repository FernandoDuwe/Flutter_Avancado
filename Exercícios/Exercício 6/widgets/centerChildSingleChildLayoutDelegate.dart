import 'package:flutter/material.dart';

class CenterChildSingleChildLayoutDelegate extends SingleChildLayoutDelegate {
  @override
  BoxConstraints getConstraintsForChild(BoxConstraints constraints) {
    return BoxConstraints(
        minHeight: constraints.minHeight,
        minWidth: constraints.minWidth,
        maxWidth: constraints.maxWidth / 2,
        maxHeight: constraints.maxHeight / 2);
  }

  @override
  Offset getPositionForChild(Size size, Size childSize) {
    // TODO: implement getPositionForChild
    return Offset((size.width / 2) - (childSize.width / 2), (size.height / 2) - (childSize.height / 2));
  }

  @override
  bool shouldRelayout(covariant SingleChildLayoutDelegate oldDelegate) {
    return false;
  }
}
