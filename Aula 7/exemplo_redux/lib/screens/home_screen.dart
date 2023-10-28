import 'package:carrinho_compras/repositories/produto_repository.dart';
import 'package:carrinho_compras/widgets/bottom_carrinho.dart';
import 'package:carrinho_compras/widgets/carrinho_app_bar.dart';
import 'package:carrinho_compras/widgets/produto_tile.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Carrinho de compras"),
        actions: [CarrinhoAppBar()],
      ),
      body: ListView.builder(
          itemCount: ProdutoRepository.get().length,
          itemBuilder: (context, index) =>
              ProdutoTile(produtoModel: ProdutoRepository.get()[index])),
      bottomSheet: BottomCarrinho(),
    );
  }
}
