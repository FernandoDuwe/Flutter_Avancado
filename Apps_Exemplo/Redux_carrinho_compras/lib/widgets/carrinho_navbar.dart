import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux_example/states/carrinho_state.dart';

class CarrinhoNavbar extends StatelessWidget {
  const CarrinhoNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return StoreBuilder<CarrinhoState>(
      builder: (context, vm) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Total a pagar",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("${vm.state.totalCost.toStringAsFixed(2)}"),
            )
          ],
        );
      },
    );
  }
}
