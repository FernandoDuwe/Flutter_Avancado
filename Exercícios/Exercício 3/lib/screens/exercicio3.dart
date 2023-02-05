import 'package:flutter/material.dart';
import 'package:flutter_avancado/models/travelModel.dart';

class Exercicio3 extends StatelessWidget {
  final TravelModel product;

  const Exercicio3(this.product, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercício 3"),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Flexible(
              flex: 1,
              child: FractionallySizedBox(
                heightFactor: 1,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(this.product.image),
                      fit: BoxFit.cover,
                    )
                  ),
                )
              )),
          Flexible(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                this.product.title,
                                style: TextStyle(fontSize: 24),
                              ),
                              Text(
                                this.product.subtitle,
                                style: TextStyle(fontSize: 18),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(this.product.priceText(),
                            style: TextStyle(
                                fontSize: 32, color: Colors.lightGreen)),
                      )
                    ],
                  ),
                  Divider(),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(this.product.description),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
