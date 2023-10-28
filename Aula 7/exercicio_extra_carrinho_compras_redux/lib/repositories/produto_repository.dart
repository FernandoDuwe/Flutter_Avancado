import '../models/produto_model.dart';

class ProdutoRepository {
  static List<ProdutoModel> get() {
    return [
      ProdutoModel(descricao: "Produto 1", valorUnitario: 19.90),
      ProdutoModel(descricao: "Produto 2", valorUnitario: 47.50),
      ProdutoModel(descricao: "Produto 3", valorUnitario: 12)
    ];
  }
}