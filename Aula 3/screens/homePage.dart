import 'package:flutter/material.dart';

import '../models/menuItemModel.dart';
    
class HomePage extends StatelessWidget {
  List<MenuItemModel> _itens = [
    MenuItemModel("AnimatedBuilder", "Exemplo usando AnimatedBuilder", "/animatedBuilder"),
    MenuItemModel("Artigo Screen", "Teste de reload do delegate", "/articleScreen"),
    MenuItemModel("AspectRatio", "Exemplo de AspectRatio", "/aspectRatio"),
    MenuItemModel("Curved", "Exemplo usando curvas", "/curves"),
    MenuItemModel("CustomPaint", "Exemplo de CustomPaint", "/customPaintScreen"),
    MenuItemModel("CustomSingleChildLayout", "Exemplo de CustomSingleChildLayout e seu delegate", "/customSingleChildLayout"),
    MenuItemModel("CustomMultiChildLayout", "Exemplo de CustomMultiChildLayout e seu delegate", "/customMultiChildLayout"),
    MenuItemModel("FittedBox", "FittedBox", "/fittedBoxScreen"),
    MenuItemModel("FractionallySizedBox", "Exemplo com FractionallySizedBox", "/fracSizedBox  "),
    MenuItemModel("FractionallySizedBox 2", "Exemplo com FractionallySizedBox e Columns", "/fracSizedBox2"),
    MenuItemModel("LayoutBuilder", "Exemplo usando LayoutBuilder", "/layoutBuilder"),
    MenuItemModel("Minha primeira animação", "Primeiro exemplo usando animações", "/minhaPrimeiraAnimacao"),
    MenuItemModel("OrientationBuilder", "Exemplo usando OrientationBuilder", "/orientationBuilder"),
    MenuItemModel("Sliver", "Exemplos de Slivers", "/sliverList"),
    MenuItemModel("Teste", "Teste", "/teste"),
    MenuItemModel("Exercicio 1", "Exercício 1 - GitHub", "/exercicio1"),
    MenuItemModel("Exercício 1 - Sala", "Exercício 1 resolvido em sala de aula", "/exercicio1Sala"),
    MenuItemModel("Exercício 2 - Sala", "Exercício 2 resolvido em sala de aula", "/exercicio2"),
    MenuItemModel("Exercício 4 - Sala", "Exercício 4 resolvido em sala de aula", "/exercicio4Sala"),
    MenuItemModel("Exercício 7 - Sala", "Exercício 7 resolvido em sala de aula", "/exercicio7Sala"),
    MenuItemModel("Exercício 8 - Sala", "Exercício 8 resolvido em sala de aula", "/exercicio8Sala"),
    MenuItemModel("Exercício 9 - Sala", "Exercício 9 resolvido em sala de aula", "/exercicio9Sala"),
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
