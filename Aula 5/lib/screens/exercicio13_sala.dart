import 'package:flutter/material.dart';

class Exercicio13Sala extends StatefulWidget {
  const Exercicio13Sala({Key? key}) : super(key: key);

  @override
  State<Exercicio13Sala> createState() => _Exercicio13SalaState();
}

class _Exercicio13SalaState extends State<Exercicio13Sala> {
  List<String> _convidadosDisponiveis = [
    "Convidado 1",
    "Convidado 2",
    "Convidado 3"
  ];
  List<String> _convidadosConfirmados = [];

  Widget? _getConvidadosDisponiveisList(BuildContext context, int index) {
    return Dismissible(
      key: ValueKey<String>(this._convidadosDisponiveis[index]),
      direction: DismissDirection.startToEnd,
      background: Container(
        alignment: Alignment.topLeft,
        color: Colors.green,
        child: Icon(Icons.arrow_circle_down_rounded),
      ),
      child: ListTile(
        leading: Icon(Icons.person, color: Colors.grey),
        title: Text(this._convidadosDisponiveis[index]),
      ),
      onDismissed: (direction) {
        setState(() {
          this._convidadosConfirmados.add(this._convidadosDisponiveis[index]);

          this._convidadosDisponiveis.removeAt(index);
        });
      },
    );
  }

  Widget? _getConvidadosConfirmadosList(BuildContext context, int index) {
    return Dismissible(
      key: ValueKey<String>(this._convidadosConfirmados[index]),
      direction: DismissDirection.endToStart,
      background: Container(
        color: Colors.red,
        alignment: Alignment.topRight,
        child: Icon(Icons.arrow_circle_up),
      ),
      onDismissed: (direction) {
        setState(() {
          this._convidadosDisponiveis.add(this._convidadosConfirmados[index]);

          this._convidadosConfirmados.removeAt(index);
        });
      },
      child: ListTile(
        leading: Icon(Icons.person, color: Colors.blueAccent),
        title: Text(this._convidadosConfirmados[index]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercício 13"),
      ),
      body: Column(
        children: [
          Flexible(
              flex: 1,
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text("Convidados disponíveis"),
                color: Colors.redAccent,
              )),
          Flexible(
            flex: 4,
            child: ListView.builder(
              itemCount: this._convidadosDisponiveis.length,
              itemBuilder: _getConvidadosDisponiveisList,
            ),
          ),
          Flexible(
              flex: 1,
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text("Convidados confirmados"),
                color: Colors.green,
              )),
          Flexible(
              flex: 4,
              child: ListView.builder(
                  itemCount: this._convidadosConfirmados.length,
                  itemBuilder: this._getConvidadosConfirmadosList))
        ],
      ),
    );
  }
}
