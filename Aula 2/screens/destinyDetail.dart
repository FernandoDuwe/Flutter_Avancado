import 'package:flutter/material.dart';
import 'package:flutteravanc_aula1/models/travelDestiny.dart';

class DestinyDetail extends StatelessWidget {
  final TravelDestiny destiny;

  const DestinyDetail(this.destiny, {Key? key}) : super(key: key);

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
                      image: NetworkImage(this.destiny.imageURL),
                      fit: BoxFit.cover,
                    )),
                  ))),
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
                                this.destiny.title,
                                style: TextStyle(fontSize: 24),
                              ),
                              Text(
                                this.destiny.subTitle,
                                style: TextStyle(fontSize: 18),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("${this.destiny.price}",
                            style: TextStyle(
                                fontSize: 32, color: Colors.lightGreen)),
                      )
                    ],
                  ),
                  Divider(),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(this.destiny.description),
                    ),
                  ),
                  Container(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Reservar agora"),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(Icons.airplanemode_on)
                            ],
                          )))
                ],
              ))
        ],
      ),
    );
    ;
  }
}
