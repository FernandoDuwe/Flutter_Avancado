import 'package:exercicio_carrinho_compras_redux/models/carrinho_model.dart';
import 'package:exercicio_carrinho_compras_redux/widgets/bottom_finish_cart.dart';
import 'package:exercicio_carrinho_compras_redux/widgets/produto_carrinho_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class CartDetail extends StatelessWidget {
  const CartDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Finalizar compra"),
      ),
      body: StoreBuilder<CarrinhoModel>(
        builder: (context, carrinho) {
          if (carrinho.state.isEmpty)
            return Center(
              child: Text("Nenhum item adicionado ao carrinho"),
            );

          return ListView.builder(
            itemCount: carrinho.state.itens.length,
            itemBuilder: (context, index) => ProdutoCarrinhoTile(
                carrinhoProdutoModel: carrinho.state.itens[index]),
          );
        },
      ),
      bottomSheet: BottomFinishCart(),
    );
  }
}
