import "package:flutter/material.dart";
import "package:flutter_avancado_aula1/models/trip_model.dart";

class TripBody extends StatelessWidget {
  final TripModel tripModel;

  const TripBody({ required this.tripModel, super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
        flex: 1,
        fit: FlexFit.tight,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        tripModel.descricao,
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(tripModel.descricao)
                    ],
                  ),
                  Text(
                    "R\$ ${tripModel.custo.toStringAsFixed(2)}",
                    style: TextStyle(fontSize: 22, color: Colors.green),
                  )
                ],
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(tripModel.text),
              )
            ],
          ),
        ));
  }
}
