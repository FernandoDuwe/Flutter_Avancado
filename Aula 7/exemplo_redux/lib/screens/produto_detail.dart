import 'package:carrinho_compras/model/carrinho_compras_action.dart';
import 'package:carrinho_compras/model/produto_model.dart';
import 'package:carrinho_compras/reducer/carrinho_compras_reducert.dart';
import 'package:carrinho_compras/widgets/produto_tile.dart';
import 'package:flutter/material.dart';

import '../widgets/bottom_carrinho.dart';
import '../widgets/carrinho_app_bar.dart';

class ProdutoDetail extends StatelessWidget {
  final ProdutoModel produtoModel;

  const ProdutoDetail({required this.produtoModel, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detalhes do produto"),
        actions: [
          CarrinhoAppBar()
        ],
      ),
      body: ListView(
        children: [
          ProdutoTile(produtoModel: produtoModel),
          ListTile(
            leading: IconButton(
              onPressed: () {
                carrinhoComprasStore.dispatch(
                    CarrinhoComprasAction.adicionarProduto(
                        quantidade: 1,
                        valorUnitario: produtoModel.valorUnitario));
              },
              icon: Icon(Icons.add),
            ),
            trailing: IconButton(
              onPressed: () {
                carrinhoComprasStore.dispatch(
                    CarrinhoComprasAction.removerProduto(
                        quantidade: 1,
                        valorUnitario: produtoModel.valorUnitario));
              },
              icon: Icon(Icons.remove),
            ),
          )
        ],
      ),
      bottomSheet: BottomCarrinho(),
    );
  }
}
