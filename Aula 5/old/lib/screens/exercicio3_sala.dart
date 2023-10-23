import 'package:flutter/material.dart';
import 'package:flutter_avancado_aula4/models/travelDestiny.dart';

class Exercicio3Sala extends StatelessWidget {
  final TravelDestiny destiny;

  const Exercicio3Sala(this.destiny, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercício 3"),
      ),
      body: Column(
        children: [
          Flexible(
              flex: 1,
              child: FractionallySizedBox(
                heightFactor: 1,
                widthFactor: 1,
                child: Image(
                    image: NetworkImage(this.destiny.imageURL),
                    fit: BoxFit.cover),
              )),
          Flexible(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                this.destiny.title,
                                style: TextStyle(fontSize: 18),
                              ),
                              Text(this.destiny.subTitle)
                            ],
                            crossAxisAlignment: CrossAxisAlignment.start,
                          ),
                        ),
                        Container(
                          width: 300,
                          child: Text(
                            this.destiny.price.toString(),
                            textAlign: TextAlign.end,
                            style: TextStyle(fontSize: 22, color: Colors.green),
                          ),
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      this.destiny.description,
                      style: TextStyle(fontSize: 16),
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
