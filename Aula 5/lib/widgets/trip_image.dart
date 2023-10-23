import "package:flutter/material.dart";
import "package:flutter_avancado_aula1/models/trip_model.dart";

class TripImage extends StatelessWidget {
  final TripModel tripModel;

  const TripImage({ required this.tripModel, super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
        flex: 1,
        fit: FlexFit.tight,
        child: Image.network(
          tripModel.imageUrl,
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.cover,
        ));
  }
}
