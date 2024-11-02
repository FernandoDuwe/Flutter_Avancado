import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux_example/states/carrinho_state.dart';
import 'package:redux_example/widgets/carrinho_pin.dart';
import 'package:redux_example/widgets/product_carrinho_tile.dart';

class CarrinhoScreen extends StatelessWidget {
  const CarrinhoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Carrinho de compras"),
        actions: [CarrinhoPin()],
      ),
      body: StoreBuilder<CarrinhoState>(
        builder: (context, vm) {
          if (vm.state.size == 0)
            return Center(
              child: Text(
                  "Carrinho ainda está vazio. Adicione novos itens para continuar."),
            );

          return ListView.builder(
            itemCount: vm.state.products.length,
            itemBuilder: (context, index) =>
                ProductCarrinhoTile(productModel: vm.state.products[index]),
          );
        },
      ),
    );
  }
}
