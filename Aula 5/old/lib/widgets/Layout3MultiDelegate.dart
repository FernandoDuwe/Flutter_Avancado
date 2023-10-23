import 'package:flutter/material.dart';

class Layout3MultiDelegate extends MultiChildLayoutDelegate {
  @override
  void performLayout(Size size) {
    if (hasChild(1)) {
      layoutChild(
          1,
          BoxConstraints(
              minHeight: 0,
              minWidth: 0,
              maxHeight: size.height,
              maxWidth: size.width / 2));

      positionChild(
          1,
          Offset(
            0,
            0,
          ));
    }

    if (hasChild(2)) {

      if (hasChild(3)) {
        layoutChild(
            2,
            BoxConstraints(
                minWidth: 0,
                minHeight: 0,
                maxHeight: size.height / 2,
                maxWidth: size.width / 2));
      } else {
        layoutChild(
            2,
            BoxConstraints(
                minWidth: 0,
                minHeight: 0,
                maxHeight: size.height,
                maxWidth: size.width / 2));
      }

      positionChild(2, Offset(size.width / 2, 0));
    }

    if (hasChild(3)) {
      layoutChild(
          3,
          BoxConstraints(
              minWidth: 0,
              minHeight: 0,
              maxWidth: size.width / 2,
              maxHeight: size.height / 2));

      positionChild(3, Offset(size.width / 2, size.height / 2));
    }
  }

  @override
  bool shouldRelayout(covariant MultiChildLayoutDelegate oldDelegate) {
    return true;
  }
}
