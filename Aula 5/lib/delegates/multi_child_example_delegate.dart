import "package:flutter/material.dart";

class MultiChildExampleDelegate extends MultiChildLayoutDelegate {
  @override
  void performLayout(Size size) {
    double quadrante = (size.width / 4);
    double border = 20;

    if (hasChild(1)) {
      layoutChild(1, BoxConstraints.tight(Size(quadrante, (size.height / 2))));

      positionChild(1, Offset(quadrante - border, (size.height / 4) - border));
    }

    if (hasChild(2)) {
      double altura = (size.height / 4);

      if (!hasChild(3))
        altura = (size.height / 2);

      layoutChild(2, BoxConstraints.tight(Size(
        quadrante,
        altura
      )));
      
      positionChild(2, Offset(border + quadrante * 2, (size.height / 4) - border));
    }

    if (hasChild(3)) {
      layoutChild(3, BoxConstraints.tight(Size(
        quadrante,
          (size.height / 4)
      )));
      
      positionChild(3, Offset(border + quadrante * 2, border + (size.height / 2)));
    }
  }

  @override
  bool shouldRelayout(covariant MultiChildExampleDelegate oldDelegate) {
    return true;
  }
}
