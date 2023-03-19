import 'package:flutter/material.dart';
import 'package:flutter_avancado_aula4/screens/notebookDetails.dart';

class HeroExample extends StatelessWidget {
  const HeroExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero"),
      ),
      body: ListView(
        children: [
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => NotebookDetails(),));
            },
            leading: Hero(
              tag: "https://fujiokadistribuidor.vteximg.com.br/arquivos/ids/214541",
              child: Image(
                image: NetworkImage(
                    "https://fujiokadistribuidor.vteximg.com.br/arquivos/ids/214541"),
                height: 50,
              ),
            ),
            title: Text("Notebook top demais"),
          )
        ],
      ),
    );
  }
}
