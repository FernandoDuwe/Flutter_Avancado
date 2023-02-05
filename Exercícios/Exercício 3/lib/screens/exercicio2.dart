import 'package:flutter/material.dart';
import 'package:flutter_avancado/widgets/travelItem.dart';

import '../models/travelModel.dart';

class Exercicio2 extends StatelessWidget {
  List<TravelModel> _products = [
    TravelModel("São Paulo", "Ida e volta + aereo", "Venha para São Paulo e conheça as maravilhas da terra da garoa",
        "assets/saoPaulo.jpg", 490.30),
    TravelModel("Rio de Janeiro", "Ida e volta + aereo e hospedagem",
        "A Cidade maravilhosa! Principal destino Brasileiro, conheça o cristo redentor, copacabana, etc",
        "assets/rioJaneiro.jpg", 557.12),
    TravelModel("Gramado", "Ida e volta",
        "Gramado roçado demais",
        "assets/gramado.jpg", 100.00),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Exercício 2"),
        ),
        body: ListView.builder(
          itemCount: this._products.length,
          itemBuilder: (context, index) {
            return TravelItem(this._products[index]);
          },
        ));
  }
}
