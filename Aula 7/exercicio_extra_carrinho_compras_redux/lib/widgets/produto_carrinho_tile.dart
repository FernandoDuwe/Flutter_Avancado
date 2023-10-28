import 'package:exercicio_carrinho_compras_redux/models/carrinho_action.dart';
import 'package:exercicio_carrinho_compras_redux/models/carrinho_produto_model.dart';
import 'package:exercicio_carrinho_compras_redux/stores/carrinho_compras_store.dart';
import 'package:flutter/material.dart';

class ProdutoCarrinhoTile extends StatelessWidget {
  final CarrinhoProdutoModel carrinhoProdutoModel;

  const ProdutoCarrinhoTile({required this.carrinhoProdutoModel, super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(carrinhoProdutoModel.produtoModel.descricao),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
              "Valor unitário: R\$ ${carrinhoProdutoModel.valorUnitario.toStringAsFixed(2)}"),
          Text("Quantidade: ${carrinhoProdutoModel.quantidade}"),
          Text(
            "Total: R\$ ${carrinhoProdutoModel.valorTotal.toStringAsFixed(2)}",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
      trailing: IconButton(
        onPressed: () {
          carrinhoStore.dispatch(CarrinhoAction.remover(produtoModel: carrinhoProdutoModel.produtoModel, quantidade: 1));
        },
        icon: Icon(Icons.remove_shopping_cart_outlined, color: Colors.redAccent),
      ),
    );
  }
}
