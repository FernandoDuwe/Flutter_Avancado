import 'dart:math';

import 'carrinho_produto_model.dart';

class CarrinhoModel {
  List<CarrinhoProdutoModel> itens = [];

  CarrinhoModel({ required this.itens });

  double get valorTotal {
    double total = 0;

    itens.forEach((element) => total = total + element.valorTotal);

    return total;
  }

  int get quantidade {
    int total = 0;

    itens.forEach((element) => total = total + element.quantidade);

    return total;
  }

  bool get isEmpty => this.valorTotal == 0;
}
