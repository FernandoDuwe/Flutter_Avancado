import 'package:flutter/material.dart';
import 'package:redux_example/models/product_model.dart';
import 'package:redux_example/screens/product_detail.dart';

class ProductTile extends StatelessWidget {
  final ProductModel productModel;

  const ProductTile({super.key, required this.productModel});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProductDetail(productModel: productModel),)),
      leading: Icon(
        Icons.add_a_photo,
        color: Colors.green,
      ),
      title: Text(productModel.description),
      trailing: Text(
        "${productModel.cost.toStringAsFixed(2)}",
        style: TextStyle(color: Colors.lightGreenAccent, fontSize: 24),
      ),
    );
  }
}
