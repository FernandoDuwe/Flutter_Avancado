import "package:flutter/material.dart";
import "package:flutter_avancado_aula1/models/trip_model.dart";
import "package:flutter_avancado_aula1/screens/exercicio3.dart";

import "../screens/exercicio5.dart";

class TripTile extends StatelessWidget {
  final TripModel tripModel;

  const TripTile({required this.tripModel, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Exercicio5(tripModel: tripModel),));
      },
      child: Container(
        height: 200,
        constraints: BoxConstraints(maxHeight: 200),
        child: FittedBox(
          fit: BoxFit.fitHeight,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      tripModel.destino,
                      style: TextStyle(fontSize: 22),
                    ),
                    Text(tripModel.descricao)
                  ],
                ),
              ),
              Image.network(tripModel.imageUrl, height: 200,)
            ],
          ),
        ),
      ),
    );
  }
}
