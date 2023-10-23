import "package:flutter/material.dart";

import "../models/flag_model.dart";

class DismissibleExample extends StatefulWidget {
  const DismissibleExample({super.key});

  @override
  State<DismissibleExample> createState() => _DismissibleExampleState();
}

class _DismissibleExampleState extends State<DismissibleExample> {
  List<String> itens = ["Item 1", "Item 2", "Item 3"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dismissible"),
      ),
      body: ListView.builder(
        itemCount: itens.length,
        itemBuilder: (context, index) {
          String value = itens[index];

          return Dismissible(
              secondaryBackground: Container(
                alignment: Alignment.centerRight,
                color: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Icon(Icons.delete),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Excluir"),
                    ],
                    mainAxisSize: MainAxisSize.min,
                  ),
                ),
              ),
              background: Container(
                alignment: Alignment.centerLeft,
                color: Colors.green,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Icon(Icons.check),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Confirmar"),
                    ],
                    mainAxisSize: MainAxisSize.min,
                  ),
                ),
              ),
              onDismissed: (direction) {
                if (direction == DismissDirection.startToEnd) {
                  print("Confirmando...");
                } else {
                  print("Removendo...");
                }

                itens.remove(value);
              },
              key: ValueKey<String>(itens[index]),
              child: ListTile(title: Text(itens[index])));
        },
      ),
    );
  }
}
