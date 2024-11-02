import 'package:redux_example/models/product_model.dart';

enum CarrinhoActionType { inclusaoProduto, remocaoProduto }

class CarrinhoAction {
  late CarrinhoActionType type;
  late ProductModel productModel;

  CarrinhoAction.adicionar(ProductModel productModel) {
    this.type = CarrinhoActionType.inclusaoProduto;

    this.productModel = productModel;
  }

  CarrinhoAction.remover(ProductModel productModel) {
    this.type = CarrinhoActionType.remocaoProduto;

    this.productModel = productModel;
  }
}