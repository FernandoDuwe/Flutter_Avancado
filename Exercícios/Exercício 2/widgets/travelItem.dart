import 'package:flutter/material.dart';
import 'package:flutter_avancado/models/travelModel.dart';

class TravelItem extends StatelessWidget {
  final TravelModel product;

  const TravelItem(this.product, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      child: FittedBox(
        fit: BoxFit.fill,
        child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(this.product.title),
                    Text(this.product.description),
                  ],
                ),
              ),
              Container(
                height: 120,
                child: Image(
                  image: NetworkImage(this.product.image),
                ),
              ),
            ],
          ),
      ),
    );
  }
}
