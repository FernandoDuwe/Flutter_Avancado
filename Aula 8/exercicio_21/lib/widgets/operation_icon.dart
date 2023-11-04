import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';

import '../stores/calc_store.dart';

class OperationIcon extends StatelessWidget {
  final CalcOperation operationType;
  final bool isCurrent;

  const OperationIcon(
      {required this.operationType, required this.isCurrent, super.key});

  IconData _getOperationIcon() {
    if (operationType == CalcOperation.dec) return Icons.remove;

    if (operationType == CalcOperation.mult) return Icons.multitrack_audio;

    if (operationType == CalcOperation.div) return Icons.scuba_diving_outlined;

    return Icons.add;
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          Provider.of<CalcStore>(context, listen: false).setOperation(this.operationType);
        },
        icon: Icon(
          _getOperationIcon(),
          size: (this.isCurrent ? 128 : 32),
          color: (this.isCurrent ? Colors.black : Colors.black12),
        ));
  }
}
