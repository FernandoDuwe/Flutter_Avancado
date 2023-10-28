import 'package:exercicio_carrinho_compras_redux/models/carrinho_model.dart';
import 'package:exercicio_carrinho_compras_redux/screens/cart_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class BottomCart extends StatelessWidget {
  const BottomCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        width: double.infinity,
        alignment: Alignment.center,
        child: StoreBuilder<CarrinhoModel>(
          builder: (context, carrinhoStore) {
            return Card(
              elevation: 50,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                        "Total: R\$ ${carrinhoStore.state.valorTotal.toStringAsFixed(2)}"),
                    SizedBox(
                      width: 30,
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => CartDetail(),
                          ));
                        },
                        icon: Icon(
                          Icons.shopping_basket_outlined,
                          color: Colors.green,
                        ))
                  ],
                ),
              ),
            );
          },
        ));
  }
}
