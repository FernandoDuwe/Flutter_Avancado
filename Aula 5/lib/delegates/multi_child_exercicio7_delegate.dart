import "package:flutter/material.dart";

class MultiChildExercicio7Delegate extends MultiChildLayoutDelegate {
  @override
  void performLayout(Size size) {
    int itemCount = 0;

    if (hasChild(1))
      itemCount++;

    if (hasChild(2))
      itemCount++;

    if (hasChild(3))
      itemCount++;

    double tamanho = (size.height / itemCount);

    if (hasChild(1)) {
      layoutChild(1, BoxConstraints.tight(Size(
        size.width,
        tamanho
      )));

      positionChild(1, Offset(0, 0));
    }

    if (hasChild(2)) {
      layoutChild(2, BoxConstraints.tight(Size(
        size.width,
        tamanho
      )));

      positionChild(2, Offset(0, tamanho));
    }

    if (hasChild(3)) {
      layoutChild(3, BoxConstraints.tight(Size(
        size.width,
        tamanho * 2
      )));

      positionChild(3, Offset(0, tamanho * 2));
    }
  }

  @override
  bool shouldRelayout(covariant MultiChildLayoutDelegate oldDelegate) {
    return true;
  }

}