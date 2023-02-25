import 'package:flutter/material.dart';
import 'package:flutter_avancado/widgets/onOffSwitch.dart';

import '../models/configModel.dart';

class Exercicio11 extends StatefulWidget {
  const Exercicio11({Key? key}) : super(key: key);

  @override
  State<Exercicio11> createState() => _exercicio11State();
}

class _exercicio11State extends State<Exercicio11> {
  List<ConfigModel> _configs = [
    ConfigModel("Configuração 1", "Configurado demais", false),
    ConfigModel("Flutter é top", "Topzera bicho", true),
    ConfigModel("Configuração 2", "Configurado demais x 2", false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Configurações"),
      ),
      body: ListView.builder(
        itemCount: this._configs.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(
              Icons.info_outline
            ),
            title: Text(this._configs[index].title),
            subtitle: Text(this._configs[index].subTitle),
            trailing: OnOffSwitch(
              isOn: this._configs[index].state,
              onChange: (prNewValue) {
                setState(() {
                  this._configs[index].state = prNewValue;
                });
              },
            ),
          );
        },
      ),
    );
  }
}
