import 'package:flutter/material.dart';
import 'package:flutter_avancado/widgets/travelItem.dart';

import '../models/travelModel.dart';

class Exercicio2 extends StatelessWidget {
  List<TravelModel> _products = [
    TravelModel("São Paulo", "Ida e volta + aereo",
        "https://www.melhoresdestinos.com.br/wp-content/uploads/2016/08/o-que-fazer-em-sao-paulo-capa2019-01.jpg"),
    TravelModel("Rio de Janeiro", "Ida e volta + aereo e hospedagem",
        "https://www.melhoresdestinos.com.br/wp-content/uploads/2019/08/rio-de-janeiro-capa2019-01.jpg"),
    TravelModel("Gramado", "Ida e volta",
        "https://www.melhoresdestinos.com.br/wp-content/uploads/2019/02/passagens-aereas-gramado-capa2019-04.jpg"),
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
