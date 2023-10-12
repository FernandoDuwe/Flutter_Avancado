import 'package:flutter/material.dart';

class CenterHalfSizeSingleChildLayoutDelegate extends SingleChildLayoutDelegate {
  @override
  BoxConstraints getConstraintsForChild(BoxConstraints constraints) {
    return BoxConstraints(
      minWidth: 0,
      minHeight: 0,
      maxHeight: constraints.maxHeight / 2,
      maxWidth: constraints.maxWidth / 2
    );
  }
  
  @override
  Offset getPositionForChild(Size size, Size childSize) {
    /*
    * X = Horizontal (Largura)
    * Y = Vertical (Altura)
    * */

    double x = (size.width / 2) - (childSize.width / 2);

    double y = (size.height) / 2 - (childSize.height / 2);

    return Offset(x, y);
  }

  @override
  bool shouldRelayout(covariant SingleChildLayoutDelegate oldDelegate) {
    return true;
  }

}