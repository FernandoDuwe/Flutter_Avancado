import 'package:carrinho_compras/model/produto_model.dart';
import 'package:carrinho_compras/screens/produto_detail.dart';
import 'package:flutter/material.dart';

class ProdutoTile extends StatelessWidget {
  final ProdutoModel produtoModel;

  const ProdutoTile({ required this.produtoModel, super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProdutoDetail(produtoModel: produtoModel),)),
      title: Text(produtoModel.descricao),
      trailing: Text("R\$ ${produtoModel.valorUnitario.toStringAsFixed(2)}", style: TextStyle(color: Colors.green),),
    );
  }
}
