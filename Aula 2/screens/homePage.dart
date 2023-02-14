import 'package:flutter/material.dart';

import '../models/menuItemModel.dart';
    
class HomePage extends StatelessWidget {
  List<MenuItemModel> _itens = [
    MenuItemModel("AspectRatio", "Exemplo de AspectRatio", "/aspectRatio"),
    MenuItemModel("CustomSingleChildLayout", "Exemplo de CustomSingleChildLayout e seu delegate", "/customSingleChildLayout"),
    MenuItemModel("CustomMultiChildLayout", "Exemplo de CustomMultiChildLayout e seu delegate", "/customMultiChildLayout"),
    MenuItemModel("FittedBox", "FittedBox", "/fittedBoxScreen"),
    MenuItemModel("FractionallySizedBox", "Exemplo com FractionallySizedBox", "/fracSizedBox"),
    MenuItemModel("FractionallySizedBox 2", "Exemplo com FractionallySizedBox e Columns", "/fracSizedBox2"),
    MenuItemModel("LayoutBuilder", "Exemplo usando LayoutBuilder", "/layoutBuilder"),
    MenuItemModel("OrientationBuilder", "Exemplo usando OrientationBuilder", "/orientationBuilder"),
    MenuItemModel("Teste", "Teste", "/teste"),
    MenuItemModel("Exercicio 1", "Exercício 1 - GitHub", "/exercicio1"),
    MenuItemModel("Exercício 1 - Sala", "Exercício 1 resolvido em sala de aula", "/exercicio1Sala"),
    MenuItemModel("Exercício 2 - Sala", "Exercício 2 resolvido em sala de aula", "/exercicio2"),
    MenuItemModel("Exercício 4 - Sala", "Exercício 4 resolvido em sala de aula", "/exercicio4Sala")
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
