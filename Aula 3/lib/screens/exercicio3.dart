import "package:flutter/material.dart";
import "package:flutter_avancado_aula1/models/trip_model.dart";
import "package:flutter_avancado_aula1/widgets/trip_body.dart";
import "package:flutter_avancado_aula1/widgets/trip_image.dart";

class Exercicio3 extends StatelessWidget {
  final TripModel tripModel;

  const Exercicio3({required this.tripModel, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercício 3"),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TripImage(tripModel: tripModel),
          TripBody(tripModel: tripModel)
        ],
      ),
    );
  }
}
