import 'package:flutter/material.dart';

import '../models/menuItemModel.dart';
    
class HomePage extends StatelessWidget {
  List<MenuItemModel> _itens = [
    MenuItemModel("AspectRatio", "Exemplo de AspectRatio", "/aspectRatio"),
    MenuItemModel("FittedBox", "FittedBox", "/fittedBoxScreen"),
    MenuItemModel("FractionallySizedBox", "Exemplo com FractionallySizedBox", "/fracSizedBox"),
    MenuItemModel("FractionallySizedBox 2", "Exemplo com FractionallySizedBox e Columns", "/fracSizedBox2"),
    MenuItemModel("Teste", "Teste", "/teste"),
    MenuItemModel("Exercicio 1", "Exercício 1 - GitHub", "/exercicio1"),
    MenuItemModel("Exercício 1 - Sala", "Exercício 1 resolvido em sala de aula", "/exercicio1Sala"),
    MenuItemModel("Exercício 2 - Sala", "Exercício 2 resolvido em sala de aula", "/exercicio2")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Página Inicial"),
      ),
      body: ListView.builder(
        itemCount: this._itens.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(this._itens[index].title),
          subtitle: Text(this._itens[index].subtitle),
          onTap: () {
            Navigator.of(context).pushNamed(this._itens[index].route);
          },
        )
      ),
    );
  }
}
