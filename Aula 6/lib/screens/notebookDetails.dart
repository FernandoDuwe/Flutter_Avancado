import 'package:flutter/material.dart';

class NotebookDetails extends StatelessWidget {
  const NotebookDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notebook"),
      ),
      body: Column(
        children: [
          Hero(
            tag: "https://fujiokadistribuidor.vteximg.com.br/arquivos/ids/214541",
            child: Image(
                height: 200,
                image: NetworkImage(
                    "https://fujiokadistribuidor.vteximg.com.br/arquivos/ids/214541")),
          ),
          Column(
            children: [
              Text("Notebook bom"),
              Divider(),
              Text("Preço:"),
            ],
          )
        ],
      ),
    );
  }
}
