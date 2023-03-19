import 'package:flutter/material.dart';
import 'package:flutter_avancado_aula4/widgets/menuItemTile.dart';
import 'package:flutter_avancado_aula4/widgets/mineDrawer.dart';

import '../models/menuItemModel.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<MenuItemModel> _itens = [
    MenuItemModel("AnimatedContainer", "Exemplo usando AnimatedContainer",
        "/animatedContainer"),
    MenuItemModel("AnimatedCrossFade", "Exemplo usando AnimatedCrossFade",
        "/animatedCrossFade"),
    MenuItemModel("AnimatedBuilder", "Exemplo usando AnimatedBuilder",
        "/animatedBuilder"),
    MenuItemModel("AnimatedList", "Exemplo usando AnimatedList",
        "/animatedList"),
    MenuItemModel("AnimatedSwitcher", "Exemplo usando AnimatedSwitcher",
        "/animatedSwitcher"),
    MenuItemModel(
        "Artigo Screen", "Teste de reload do delegate", "/articleScreen"),
    MenuItemModel("AspectRatio", "Exemplo de AspectRatio", "/aspectRatio"),
    MenuItemModel("CachedImage", "Imagens em cache", "/cachedImage"),
    MenuItemModel("Curved", "Exemplo usando curvas", "/curves"),
    MenuItemModel(
        "CustomPaint", "Exemplo de CustomPaint", "/customPaintScreen"),
    MenuItemModel(
        "CustomSingleChildLayout",
        "Exemplo de CustomSingleChildLayout e seu delegate",
        "/customSingleChildLayout"),
    MenuItemModel(
        "CustomMultiChildLayout",
        "Exemplo de CustomMultiChildLayout e seu delegate",
        "/customMultiChildLayout"),
    MenuItemModel("DecoratedBoxTransitions", "Exemplo de DecoratedBoxTransitions", "/decoratedBoxTransitions"),
    MenuItemModel("Dismissible", "Exemplo de Dismissible", "/dismissibleScreen"),
    MenuItemModel("FittedBox", "FittedBox", "/fittedBoxScreen"),
    MenuItemModel("FractionallySizedBox", "Exemplo com FractionallySizedBox",
        "/fracSizedBox  "),
    MenuItemModel("FractionallySizedBox 2",
        "Exemplo com FractionallySizedBox e Columns", "/fracSizedBox2"),
    MenuItemModel("Hero",
        "Exemplo com Hero", "/heroScreen"),
    MenuItemModel(
        "LayoutBuilder", "Exemplo usando LayoutBuilder", "/layoutBuilder"),
    MenuItemModel("Minha primeira animação",
        "Primeiro exemplo usando animações", "/minhaPrimeiraAnimacao"),
    MenuItemModel("OrientationBuilder", "Exemplo usando OrientationBuilder",
        "/orientationBuilder"),
    MenuItemModel("Sliver", "Exemplos de Slivers", "/sliverList"),
    MenuItemModel("Teste", "Teste", "/teste"),
    MenuItemModel("Teste calculadora",
        "Teste Calculadora: teste de widget", "/calculadora"),
    MenuItemModel("Teste semáforo",
        "Teste semáforo: teste de widget", "/testeSemaforo"),
    MenuItemModel("Exercicio 1", "Exercício 1 - GitHub", "/exercicio1",
        type: MenuItemType.exercise),
    MenuItemModel("Exercício 1 - Sala", "Exercício 1 resolvido em sala de aula",
        "/exercicio1Sala",
        type: MenuItemType.exercise),
    MenuItemModel("Exercício 2 - Sala", "Exercício 2 resolvido em sala de aula",
        "/exercicio2",
        type: MenuItemType.exercise),
    MenuItemModel("Exercício 4 - Sala", "Exercício 4 resolvido em sala de aula",
        "/exercicio4Sala",
        type: MenuItemType.exercise),
    MenuItemModel("Exercício 7 - Sala", "Exercício 7 resolvido em sala de aula",
        "/exercicio7Sala",
        type: MenuItemType.exercise),
    MenuItemModel("Exercício 8 - Sala", "Exercício 8 resolvido em sala de aula",
        "/exercicio8Sala",
        type: MenuItemType.exercise),
    MenuItemModel("Exercício 9 - Sala", "Exercício 9 resolvido em sala de aula",
        "/exercicio9Sala",
        type: MenuItemType.exercise),
    MenuItemModel("Exercício 10 - Sala",
        "Exercício 10 resolvido em sala de aula", "/exercicio10Sala",
        type: MenuItemType.exercise),
    MenuItemModel("Exercício 11 - Sala",
        "Exercício 11 resolvido em sala de aula", "/exercicio11Sala",
        type: MenuItemType.exercise),
    MenuItemModel("Exercício 12 - Sala",
        "Exercício 12 resolvido em sala de aula", "/exercicio12Sala",
        type: MenuItemType.exercise),
    MenuItemModel("Exercício 13 - Sala",
        "Exercício 13 resolvido em sala de aula", "/exercicio13Sala",
        type: MenuItemType.exercise),
    MenuItemModel("Exercício 15 - Sala",
        "Exercício 15 resolvido em sala de aula", "/exercicio15Sala",
        type: MenuItemType.exercise),
  ];

  List<MenuItemModel> _showItens() {
    List<MenuItemModel> vrItens = [];

    this._itens.forEach((element) {
      if (element.matchFilter(this._searchString, this._showExamples, this._showExercises))
        vrItens.add(element);
    });

    return vrItens;
  }

  bool _showExamples = true;
  bool _showExercises = true;
  String _searchString = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: TextField(
            key: ValueKey<String>("home_search_edit"),
            decoration: InputDecoration(
                hintText: "Pesquisar",
                border: InputBorder.none,
                icon: Icon(Icons.search)),
            onChanged: (value) {
              setState(() {
                this._searchString = value;
              });
            },
          ),
          actions: [
            IconButton(onPressed: () {
              setState(() {
                this._showExamples = !this._showExamples;
              });
            }, icon: Icon(Icons.code, color: (this._showExamples ? Colors.white : Colors.black38),)),

            IconButton(onPressed: () {
              setState(() {
                this._showExercises = !this._showExercises;
              });
            }, icon: Icon(Icons.school_sharp, color: (this._showExercises ? Colors.green : Colors.black38),)),
          ],
        ),
        drawer: MineDrawer(itens: this._itens),
        body: ListView.builder(
          itemCount: this._showItens().length,
          itemBuilder: (context, index) =>
              MenuItemTile(model: this._showItens()[index]),
        ));
  }
}
