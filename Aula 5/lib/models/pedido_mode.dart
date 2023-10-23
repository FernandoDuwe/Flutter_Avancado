import 'package:flutter_avancado_aula1/classes/icms.dart';
import 'package:flutter_avancado_aula1/models/pedido_item_mode.dart';

class PedidoModel {
  List<PedidoItemModel> _itens = [];

  void addItem(PedidoItemModel pedidoItemModel) => _itens.add(pedidoItemModel);

  double get valorTotal {
    double valorTotal = 0;

    _itens.forEach((element) {
      valorTotal += element.quantidade * element.valorUnitario;
    });

    return valorTotal;
  }

  double get valorTotalComImposto {
    double valorTotal = 0;

    _itens.forEach((element) {
      ICMS icms = ICMS(
          valorTotal: element.quantidade * element.valorUnitario,
          percentualEstado: 12);

      valorTotal +=
          element.quantidade * element.valorUnitario + icms.valorAPagar;
    });

    return valorTotal;
  }
}
