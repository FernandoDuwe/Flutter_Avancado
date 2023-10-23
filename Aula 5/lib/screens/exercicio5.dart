import "package:flutter/material.dart";

import "../models/trip_model.dart";
import "../widgets/trip_body.dart";
import "../widgets/trip_image.dart";

class Exercicio5 extends StatelessWidget {
  final TripModel tripModel;

  const Exercicio5({ required this.tripModel, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercício 3"),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait)
            return Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TripImage(tripModel: tripModel),
                TripBody(tripModel: tripModel)
              ],
            );

          return Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [TripImage(tripModel: tripModel), TripBody(tripModel: tripModel)],
          );
        },
      )
    );
  }
}
