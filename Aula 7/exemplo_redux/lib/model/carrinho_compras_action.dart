enum CarrinhoComprasActionType { adicionarProduto, removerProduto }

class CarrinhoComprasAction {
  int quantidade = 0;
  double valorUnitario = 0;

  late CarrinhoComprasActionType actionType;

  CarrinhoComprasAction.adicionarProduto(
      {required this.quantidade, required this.valorUnitario}) {
    this.actionType = CarrinhoComprasActionType.adicionarProduto;
  }

  CarrinhoComprasAction.removerProduto(
      {required this.quantidade, required this.valorUnitario}) {
    this.actionType = CarrinhoComprasActionType.removerProduto;
  }

  double get valorTotal => quantidade * valorUnitario;
}
