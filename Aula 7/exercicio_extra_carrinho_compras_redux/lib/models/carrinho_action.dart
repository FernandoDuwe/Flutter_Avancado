import 'package:exercicio_carrinho_compras_redux/models/produto_model.dart';

enum CarrinhoActionType { adicionar, remover }

class CarrinhoAction {
  CarrinhoActionType actionType = CarrinhoActionType.adicionar;
  ProdutoModel produtoModel;
  int quantidade;

  CarrinhoAction.adicionar({ required this.produtoModel, required this.quantidade }) {
    this.actionType = CarrinhoActionType.adicionar;
  }

  CarrinhoAction.remover({ required this.produtoModel, required this.quantidade }) {
    this.actionType = CarrinhoActionType.remover;
  }
}