import 'package:exercicio_21/stores/calc_store.dart';
import 'package:exercicio_21/widgets/operation_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class OperationWidget extends StatelessWidget {
  const OperationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        CalcOperation calcOperation = CalcOperation
            .values[Provider.of<CalcStore>(context).currentOperation];

        return Container(
          constraints: BoxConstraints(maxHeight: 200),
          padding: const EdgeInsets.all(8),
          alignment: Alignment.center,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              OperationIcon(
                  operationType: CalcOperation.sum,
                  isCurrent: calcOperation == CalcOperation.sum),
              OperationIcon(
                  operationType: CalcOperation.dec,
                  isCurrent: calcOperation == CalcOperation.dec),
              OperationIcon(
                  operationType: CalcOperation.mult,
                  isCurrent: calcOperation == CalcOperation.mult),
              OperationIcon(
                  operationType: CalcOperation.div,
                  isCurrent: calcOperation == CalcOperation.div)
            ],
          ),
        );
      },
    );
  }
}
