import 'package:flutter/material.dart';
import 'package:redux_example/repositories/product_repository.dart';
import 'package:redux_example/widgets/carrinho_navbar.dart';
import 'package:redux_example/widgets/carrinho_pin.dart';
import 'package:redux_example/widgets/product_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var list = ProductRepository.getProducst();

    return Scaffold(
      appBar: AppBar(
        title: Text("Loja Proway"),
        actions: [CarrinhoPin()],
      ),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) => ProductTile(productModel: list[index]),
      ),
      bottomNavigationBar: CarrinhoNavbar(),
    );
  }
}
