import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux_example/screens/carrinho_screen.dart';
import 'package:redux_example/states/carrinho_state.dart';

class CarrinhoPin extends StatelessWidget {
  const CarrinhoPin({super.key});

  @override
  Widget build(BuildContext context) {
    return StoreBuilder<CarrinhoState>(
      builder: (context, vm) {
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => CarrinhoScreen(),));
            }, icon: Icon(Icons.shopping_cart)),
            Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle
                ),
                child: Text(
                  "${vm.state.size}",
                  style: TextStyle(color: Colors.white),
                ))
          ],
        );
      },
    );
  }
}
