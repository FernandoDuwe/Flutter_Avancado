import 'package:carrinho_compras/model/carrinho_compras_action.dart';
import 'package:carrinho_compras/model/carrinho_compras_model.dart';
import 'package:redux/redux.dart';

CarrinhoComprasModel carrinhoComprasReducer(
    CarrinhoComprasModel carrinhoComprasModel, dynamic action) {

  CarrinhoComprasAction carrinhoComprasAction = action as CarrinhoComprasAction;

  if (carrinhoComprasAction.actionType == CarrinhoComprasActionType.adicionarProduto) {
    return CarrinhoComprasModel(
        quantidadeItens:
            carrinhoComprasModel.quantidadeItens + carrinhoComprasAction.quantidade,
        totalPagar: carrinhoComprasModel.totalPagar + carrinhoComprasAction.valorTotal);
  }

  return CarrinhoComprasModel(
      quantidadeItens: carrinhoComprasModel.quantidadeItens - carrinhoComprasAction.quantidade,
      totalPagar: carrinhoComprasModel.totalPagar - carrinhoComprasAction.valorTotal);
}

final Store<CarrinhoComprasModel> carrinhoComprasStore = Store<CarrinhoComprasModel>(
    carrinhoComprasReducer,
    initialState: CarrinhoComprasModel(quantidadeItens: 0, totalPagar: 0));
