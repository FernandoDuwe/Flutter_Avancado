import 'package:flutter/material.dart';
import 'package:redux_example/actions/carrinho_action.dart';
import 'package:redux_example/models/product_model.dart';
import 'package:redux_example/stores/carrinho_store.dart';
import 'package:redux_example/widgets/carrinho_pin.dart';

class ProductDetail extends StatelessWidget {
  final ProductModel productModel;

  const ProductDetail({super.key, required this.productModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.productModel.description),
        actions: [
          CarrinhoPin()
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("Nome do produto"),
            subtitle: Text(this.productModel.description),
          ),
          ListTile(
            title: Text("Valor unitário"),
            subtitle: Text(this.productModel.cost.toStringAsFixed(2)),
          ),
          ElevatedButton(
              onPressed: () {
                carrinhoStore.dispatch(CarrinhoAction.adicionar(
                    ProductModel.quant(productModel, 1)));
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Adicionar ao carrinho"),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(Icons.add_shopping_cart_outlined)
                ],
              ))
        ],
      ),
    );
  }
}
