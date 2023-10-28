import 'package:exercicio_carrinho_compras_redux/models/carrinho_model.dart';
import 'package:exercicio_carrinho_compras_redux/screens/home_screen.dart';
import 'package:exercicio_carrinho_compras_redux/stores/carrinho_compras_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return StoreProvider<CarrinhoModel>(
        store: carrinhoStore,
        child: MaterialApp(
          theme: ThemeData.dark(),
          debugShowCheckedModeBanner: false,
          home: HomeScreen(),
        ));
  }
}
