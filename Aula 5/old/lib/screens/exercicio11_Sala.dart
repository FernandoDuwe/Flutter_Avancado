import 'package:flutter/material.dart';
import 'package:flutter_avancado_aula4/widgets/onOffSwitch.dart';
import 'package:flutter_avancado_aula4/widgets/onOffSwitchAnimated.dart';

import '../models/paramModel.dart';

class Exercicio11Sala extends StatefulWidget {
  const Exercicio11Sala({Key? key}) : super(key: key);

  @override
  State<Exercicio11Sala> createState() => _Exercicio11SalaState();
}

class _Exercicio11SalaState extends State<Exercicio11Sala> {
  List<ParamModel> _params = [
    ParamModel(title: "Configuração 1", subTitle: "Configuração 1", active: true),
    ParamModel(title: "Configuração 2", subTitle: "Configuração 2", active: false),
    ParamModel(title: "Configuração 3", subTitle: "Configuração 3", active: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercício 11"),
      ),
      body: ListView.builder(
        itemCount: this._params.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(this._params[index].title),
              subtitle: Text(this._params[index].subTitle),
              trailing: OnOffSwitchAnimated(model: this._params[index], onChange: (bool newValue) {
                setState(() {
                  this._params[index].active = newValue;
                });
              },),
            );
          },),
    );
  }
}
