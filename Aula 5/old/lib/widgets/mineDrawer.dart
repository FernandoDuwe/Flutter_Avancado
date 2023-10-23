import 'package:flutter/material.dart';
import 'package:flutter_avancado_aula4/widgets/menuItemTile.dart';

import '../models/menuItemModel.dart';

class MineDrawer extends StatelessWidget {
  final List<MenuItemModel> itens;

  const MineDrawer({required this.itens, Key? key}) : super(key: key);

  Widget _getTile(MenuItemModel prModel) {
    return MenuItemTile(model: prModel);
  }

  List<Widget> _getExamples() {
    List<Widget> vrList = [];

    this.itens.forEach((element) {
      if (element.type == MenuItemType.example)
        vrList.add(this._getTile(element));
    });

    return vrList;
  }

  List<Widget> _getExercises() {
    List<Widget> vrList = [];

    this.itens.forEach((element) {
      if (element.type == MenuItemType.exercise)
        vrList.add(this._getTile(element));
    });

    return vrList;
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Text("Flutter Avançado"),
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.blueAccent,
              Colors.blue,
              Colors.lightBlue,
              Colors.white,
            ])),
          ),
          ExpansionTile(
              title: Text("Exemplos"),
              children: this._getExamples(),
              initiallyExpanded: false),
          ExpansionTile(
            title: Text("Exercícios"),
            children: this._getExercises(),
            initiallyExpanded: false,
          ),
        ],
      ),
    );
  }
}
