import 'package:flutter/material.dart';
import 'package:flutteravanc_aula1/widgets/destinyTile.dart';

import '../models/travelDestiny.dart';

class Exercicio2 extends StatelessWidget {
  List<TravelDestiny> _destinos = [
    TravelDestiny("Rio de Janeiro", "Rio de Janeiro", "https://www.melhoresdestinos.com.br/wp-content/uploads/2019/08/rio-de-janeiro-capa2019-01.jpg", "Descrição do Rio de Janeiro", 500),
    TravelDestiny("São Paulo", "São Paulo", "https://www.melhoresdestinos.com.br/wp-content/uploads/2016/08/o-que-fazer-em-sao-paulo-capa2019-01.jpg", "Descrição de São Paulo", 450),
    TravelDestiny("Gramado", "Gramado", "https://www.melhoresdestinos.com.br/wp-content/uploads/2019/02/passagens-aereas-gramado-capa2019-04.jpg", "Descrição de Gramado", 300)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercício 2"),
      ),
      body: ListView.builder(
          itemCount: this._destinos.length,
          itemBuilder: (context, index) => DestinyTile(this._destinos[index])),
    );
  }
}
