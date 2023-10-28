import 'package:carrinho_compras/model/carrinho_compras_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class CarrinhoAppBar extends StatelessWidget {
  const CarrinhoAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return StoreBuilder<CarrinhoComprasModel>(builder: (context, vm) {
      return Padding(
        padding: const EdgeInsets.only(right: 15),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.shopping_cart_outlined),
            SizedBox(width: 15,),
            Container(
                alignment: Alignment.center,
                height: 48,
                width: 48,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle
                ),
                child: Text(vm.state.quantidadeItens.toString(), style: TextStyle(color: Colors.white),))
          ],
        ),
      );
    },);
  }
}
