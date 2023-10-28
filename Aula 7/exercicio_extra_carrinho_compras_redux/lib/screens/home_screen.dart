import 'package:exercicio_carrinho_compras_redux/models/carrinho_action.dart';
import 'package:exercicio_carrinho_compras_redux/models/produto_model.dart';
import 'package:exercicio_carrinho_compras_redux/repositories/produto_repository.dart';
import 'package:exercicio_carrinho_compras_redux/stores/carrinho_compras_store.dart';
import 'package:exercicio_carrinho_compras_redux/widgets/bottom_cart.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Página inicial"),
      ),
      body: ListView.builder(
        itemCount: ProdutoRepository.get().length,
        itemBuilder: (context, index) {
          ProdutoModel produtoModel = ProdutoRepository.get()[index];

          return ListTile(
            title: Text(produtoModel.descricao),
            subtitle:
                Text("R\$ ${produtoModel.valorUnitario.toStringAsFixed(2)}"),
            trailing: IconButton(
              icon: Icon(Icons.shopping_cart_checkout),
              onPressed: () {
                carrinhoStore.dispatch(CarrinhoAction.adicionar(
                    produtoModel: produtoModel, quantidade: 1));
              },
            ),
          );
        },
      ),
      bottomSheet: BottomCart(),
    );
  }
}
