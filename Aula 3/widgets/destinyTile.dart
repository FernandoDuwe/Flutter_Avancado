import 'package:flutter/material.dart';
import 'package:flutter_avancado_aula3/screens/destinyDetail.dart';
import 'package:flutter_avancado_aula3/screens/exercicio5_sala.dart';

import '../models/travelDestiny.dart';
import '../screens/exercicio3_sala.dart';

class DestinyTile extends StatelessWidget {
  final TravelDestiny destiny;

  const DestinyTile(this.destiny, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => Exercicio5Sala(destiny))),
      child: FittedBox(
        fit: BoxFit.fill,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(22.0),
              child: Column(
                children: [
                  Text(
                    this.destiny.title,
                    style: TextStyle(fontSize: 22),
                  ),
                  Text(
                    this.destiny.subTitle,
                    style: TextStyle(fontSize: 22),
                  )
                ],
              ),
            ),
            Image.network(this.destiny.imageURL)
          ],
        ),
      ),
    );
  }
}
