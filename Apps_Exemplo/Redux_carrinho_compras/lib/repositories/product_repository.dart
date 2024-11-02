import 'package:redux_example/models/product_model.dart';

class ProductRepository {
  static List<ProductModel> getProducst() {
    return [
      ProductModel(description: "Fone de ouvido sem fio", cost: 69.90, quant: 0),
      ProductModel(description: "Microfone Microsoft", cost: 124.47, quant: 0),
      ProductModel(description: "Copo térmico", cost: 40, quant: 0),
      ProductModel(description: "Suporte para celular XPTO", cost: 19.90, quant: 0)
    ];
  }
}