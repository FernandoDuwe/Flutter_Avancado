import 'package:exercicio_carrinho_compras_redux/models/carrinho_action.dart';
import 'package:exercicio_carrinho_compras_redux/models/carrinho_model.dart';
import 'package:exercicio_carrinho_compras_redux/models/carrinho_produto_model.dart';
import 'package:redux/redux.dart';

CarrinhoModel carrinhoReducer(CarrinhoModel carrinhoAtual, dynamic action) {
  CarrinhoAction carrinhoAction = action as CarrinhoAction;

  if (carrinhoAction.actionType == CarrinhoActionType.remover) {
    CarrinhoModel carrinhoModelNovo = CarrinhoModel(itens: carrinhoAtual.itens);

    int quantidadeRemover = carrinhoAction.quantidade;

    carrinhoModelNovo.itens.forEach((element) {
      if (element.produtoModel == carrinhoAction.produtoModel) {
        int quantidadeItem = element.quantidade;
        element.quantidade -= quantidadeRemover;

        quantidadeRemover = quantidadeRemover - quantidadeItem;
      }
    });

    carrinhoModelNovo.itens.removeWhere((element) => element.quantidade <= 0);

    return carrinhoModelNovo;
  }

  return CarrinhoModel(itens: [
    ...carrinhoAtual.itens,
    CarrinhoProdutoModel(
        produtoModel: carrinhoAction.produtoModel,
        quantidade: carrinhoAction.quantidade)
  ]);
}

Store<CarrinhoModel> carrinhoStore = Store<CarrinhoModel>(carrinhoReducer,
    initialState: CarrinhoModel(itens: []));
