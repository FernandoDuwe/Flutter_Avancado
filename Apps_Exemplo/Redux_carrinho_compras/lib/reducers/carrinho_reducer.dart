import 'package:redux_example/actions/carrinho_action.dart';
import 'package:redux_example/models/product_model.dart';
import 'package:redux_example/states/carrinho_state.dart';



CarrinhoState carrinhoStateReducer(CarrinhoState carrinhoAtual, dynamic action ) {
  List<ProductModel> products = carrinhoAtual.products;

  CarrinhoAction carrinhoAction = action as CarrinhoAction;

  if (carrinhoAction.type == CarrinhoActionType.inclusaoProduto) {

    bool achou = false;

    products.forEach((element) {
      if (element.description == carrinhoAction.productModel.description) {
        achou = true;

        element.quant += carrinhoAction.productModel.quant;
      }
    },);

    if (!achou)
      products.add(carrinhoAction.productModel);
  }

  if (carrinhoAction.type == CarrinhoActionType.remocaoProduto) {
    products.forEach((element) {
      if (element.description == carrinhoAction.productModel.description)
        element.quant -= carrinhoAction.productModel.quant;
    },);

    products.removeWhere((element) => element.quant <= 0);
  }

  CarrinhoState newCarrinho = CarrinhoState(products: products);

  return newCarrinho;
}