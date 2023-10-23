import "package:flutter/material.dart";
import "package:flutter_avancado_aula1/widgets/flag_widget.dart";

import "../models/flag_model.dart";

class Exercicio11 extends StatelessWidget {
  Exercicio11({super.key});

  List<FlagModel> flags = [
    FlagModel(title: "Configuração 1", active: true),
    FlagModel(title: "Configuração 2", active: false),
    FlagModel(title: "Configuração 3", active: true)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercício 11"),
      ),
      body: ListView.builder(
        itemCount: flags.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.settings),
            title: Text(flags[index].title),
            trailing: FlagWidget(
              initialValue: flags[index].active,
              onChange: (newValue) {
                flags[index].active = newValue;
              },
            ),
          );
        },
      ),
    );
  }
}
