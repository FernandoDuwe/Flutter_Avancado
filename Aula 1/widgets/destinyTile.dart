import 'package:flutter/material.dart';

import '../models/travelDestiny.dart';

class DestinyTile extends StatelessWidget {
  final TravelDestiny destiny;

  const DestinyTile(this.destiny, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
        fit: BoxFit.fill,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(22.0),
              child: Column(
                children: [
                  Text(this.destiny.title, style: TextStyle(fontSize: 22),),
                  Text(this.destiny.subTitle, style: TextStyle(fontSize: 22),)
                ],
              ),
            ),
            Image.network(this.destiny.imageURL)
          ],
        ),
    );
  }
}
