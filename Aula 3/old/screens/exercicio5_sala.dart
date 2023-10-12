import 'package:flutter/material.dart';
import 'package:flutter_avancado_aula3/models/travelDestiny.dart';

class Exercicio5Sala extends StatelessWidget {
  final TravelDestiny destiny;

  const Exercicio5Sala(this.destiny, {Key? key}) : super(key: key);

  Widget Internal_getPicture() {
    return Flexible(
        flex: 1,
        child: FractionallySizedBox(
          heightFactor: 1,
          widthFactor: 1,
          child: Image(
            image: NetworkImage(this.destiny.imageURL),
            fit: BoxFit.fill,
          ),
        ));
  }

  Widget Internal_DrawDetails() {
    return Flexible(
      flex: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      this.destiny.title,
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      this.destiny.subTitle,
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    )
                  ],
                ),
              ),
              Text(this.destiny.price.toString(),
                  style: TextStyle(fontSize: 22, color: Colors.green))
            ],
          ),
          Divider(),
          Text(
            this.destiny.description,
            style: TextStyle(fontSize: 16),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercicío 5"),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return Column(
              children: [
                this.Internal_getPicture(),
                this.Internal_DrawDetails(),
              ],
            );
          } else {
            return Row(
              children: [
                this.Internal_getPicture(),
                this.Internal_DrawDetails()
              ],
            );
          }
        },
      ),
    );
  }
}
