class ProductModel {
  String description = "";
  double cost = 0;
  int quant = 0;

  ProductModel(
      {required this.description, required this.cost, required this.quant});

  ProductModel.quant(ProductModel product, int quantidade) {
    this.description = product.description;
    this.cost = product.cost;

    this.quant = quantidade;
  }

  double get totalCost => cost * quant;
}
