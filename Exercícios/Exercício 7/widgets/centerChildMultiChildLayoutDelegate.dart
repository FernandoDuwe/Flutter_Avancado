import 'package:flutter/material.dart';

class CenterChildMultiChildLayoutDelegate extends MultiChildLayoutDelegate {
  @override
  void performLayout(Size size) {
    if (hasChild(1)) {
      layoutChild(1, BoxConstraints(maxHeight: (size.height / 3), maxWidth: size.width));

      // X - horizontal Y - vertical
      positionChild(1, Offset(0, 0));
    }

    if (hasChild(2)) {
      layoutChild(2, BoxConstraints(maxHeight: (size.height / 3), maxWidth: size.width));

      // X - horizontal Y - vertical
      positionChild(2, Offset(0, (size.height / 3)));
    }

    if (hasChild(3)) {
      layoutChild(3, BoxConstraints(maxHeight: (size.height / 3), maxWidth: size.width));

      // X - horizontal Y - vertical
      positionChild(3, Offset(0, (size.height / 3) * 2));
    }
  }

  @override
  bool shouldRelayout(covariant MultiChildLayoutDelegate oldDelegate) {
    return true;
  }
  
}