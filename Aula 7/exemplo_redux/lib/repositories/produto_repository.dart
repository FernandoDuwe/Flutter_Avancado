import '../model/produto_model.dart';

class ProdutoRepository {
  static List<ProdutoModel> get() {
    return [
      ProdutoModel(descricao: "Guarda chuva", valorUnitario: 27.90),
      ProdutoModel(descricao: "Caixa de cerveja", valorUnitario: 34.40),
      ProdutoModel(descricao: "Carvão 6Kg", valorUnitario: 27.45),
      ProdutoModel(descricao: "Contra Filé", valorUnitario: 44.90),
    ];
  }
}