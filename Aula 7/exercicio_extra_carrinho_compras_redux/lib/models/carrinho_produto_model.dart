import 'package:exercicio_carrinho_compras_redux/models/produto_model.dart';

class CarrinhoProdutoModel {
  late ProdutoModel produtoModel;
  int quantidade = 0;

  CarrinhoProdutoModel({ required this.produtoModel, required this.quantidade });

  double get valorUnitario => this.produtoModel.valorUnitario;

  double get valorTotal => this.produtoModel.valorUnitario * quantidade;
}