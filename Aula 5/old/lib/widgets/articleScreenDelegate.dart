import 'package:flutter/material.dart';

class ArticleScreenDelegate extends MultiChildLayoutDelegate {
  int proporcao;

  ArticleScreenDelegate(this.proporcao);

  @override
  void performLayout(Size size) {
    double tamanhoArtigo = (size.height / this.proporcao);

    if (hasChild(1)) {
      layoutChild(1, BoxConstraints(
        minWidth: 0,
        minHeight: 0,
        maxWidth: size.width,
        maxHeight: size.height - tamanhoArtigo
      ));

      positionChild(1, Offset(0, 0));
    }

    if (hasChild(2)) {
      layoutChild(2, BoxConstraints(
        minHeight: 0,
        minWidth: 0,
        maxWidth: size.width,
        maxHeight: tamanhoArtigo
      ));

      positionChild(2, Offset(0, size.height - tamanhoArtigo));
    }
  }

  @override
  bool shouldRelayout(covariant MultiChildLayoutDelegate oldDelegate) {
    return (oldDelegate as ArticleScreenDelegate).proporcao != this.proporcao;
  }
}