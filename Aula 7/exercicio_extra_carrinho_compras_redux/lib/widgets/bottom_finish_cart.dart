import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import '../models/carrinho_model.dart';

class BottomFinishCart extends StatelessWidget {
  const BottomFinishCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        width: double.infinity,
        alignment: Alignment.center,
        child: StoreBuilder<CarrinhoModel>(
          builder: (context, carrinhoStore) {
            if (carrinhoStore.state.isEmpty)
              return Container(
                height: 0,
                width: 0,
              );

            return Card(
              elevation: 50,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Total a pagar: R\$ ${carrinhoStore.state.valorTotal.toStringAsFixed(2)}"),
                    SizedBox(width: 30,),
                    TextButton(onPressed: () {
                        print("Clicou em finalizar");
                    }, child: Text("Finalizar compra"))
                  ],
                ),
              ),
            );
          },
        )
    );
  }
}
