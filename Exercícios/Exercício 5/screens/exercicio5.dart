import 'package:flutter/material.dart';
import 'package:flutter_avancado/widgets/travelHorizontal.dart';
import 'package:flutter_avancado/widgets/travelVertical.dart';

import '../models/travelModel.dart';

class Exercicio5 extends StatelessWidget {
  final TravelModel product;

  const Exercicio5(this.product, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Exercício 5"),
        ),
        body: OrientationBuilder(
          builder: (context, orientation) {
            if (orientation == Orientation.portrait) {
              return TravelVertical(product);
            } else {
              return TraveHorizontal(product);
            }
          },
        ));
  }
}
