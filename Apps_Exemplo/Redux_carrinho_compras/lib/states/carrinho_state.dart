import 'package:redux_example/models/product_model.dart';

class CarrinhoState {
  List<ProductModel> products;

  CarrinhoState({required this.products});

  int get size {
    int count = 0;

    products.forEach(
      (element) => count += element.quant,
    );

    return count;
  }

  double get totalCost {
    double cost = 0;

    products.forEach(
      (element) => cost += element.totalCost,
    );

    return cost;
  }
}
