import 'package:carrinho_compras/model/carrinho_compras_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class BottomCarrinho extends StatelessWidget {
  const BottomCarrinho({super.key});

  @override
  Widget build(BuildContext context) {
    return StoreBuilder<CarrinhoComprasModel>(
      builder: (context, store) {
        return Container(
          alignment: Alignment.center,
          color: Colors.blue,
          height: 50,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Icon(Icons.shopping_cart_outlined),
              ),
              Text("Total de itens: ${store.state.quantidadeItens}"),
              Text(
                  "Valor a pagar: ${store.state.totalPagar.toStringAsFixed(2)}"),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: ElevatedButton(onPressed: store.state.totalPagar > 0 ? () {
                  print("Clicou para finalizar a compra");
                } : null, child: Text("Finalizar compra")),
              )
            ],
          ),
        );
      },
    );
  }
}
