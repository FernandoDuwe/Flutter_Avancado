import 'package:flutter/material.dart';
import 'package:redux_example/actions/carrinho_action.dart';
import 'package:redux_example/models/product_model.dart';
import 'package:redux_example/stores/carrinho_store.dart';

class ProductCarrinhoTile extends StatelessWidget {
  final ProductModel productModel;

  const ProductCarrinhoTile({super.key, required this.productModel});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        Icons.add_a_photo,
        color: Colors.green,
      ),
      title: Text(this.productModel.description),
      subtitle: Text("Valor unitário: ${this.productModel.cost}"),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
              onPressed: () {
                carrinhoStore.dispatch(CarrinhoAction.adicionar(
                    ProductModel.quant(productModel, 1)));
              },
              icon: Icon(Icons.add)),
          IconButton(
              onPressed: () {
                carrinhoStore.dispatch(CarrinhoAction.remover(
                    ProductModel.quant(productModel, 1)));
              },
              icon: Icon(Icons.remove))
        ],
      ),
    );
  }
}
