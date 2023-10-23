import "package:flutter/material.dart";

typedef DismissibleTileOnDismiss = void Function(String value);

class DismissibleTile extends StatelessWidget {
  final String title;
  final bool remove;
  final DismissibleTileOnDismiss onDismiss;

  const DismissibleTile({ required this.title, required this.remove, required this.onDismiss, super.key});

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      direction: DismissDirection.startToEnd,
      key: ValueKey<String>(title),
      background: Container(
        color: (this.remove ? Colors.red : Colors.green),
        child: Text(this.remove ? "Remover" : "Adicionar"),
      ),
      onDismissed: (direction) {
        onDismiss(title);
      },
      child: ListTile(
        title: Text(title),
      ),
    );
  }
}
