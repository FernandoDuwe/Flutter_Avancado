import "package:flutter/material.dart";
import "package:flutter_avancado_aula1/widgets/dismissibleTile.dart";

class Exercicio13 extends StatefulWidget {
  const Exercicio13({super.key});

  @override
  State<Exercicio13> createState() => _Exercicio13State();
}

class _Exercicio13State extends State<Exercicio13> {
  List<String> aConfirmar = [
    "Pedro",
    "José",
    "João"
  ];

  List<String> confirmados = [
    "Maria",
    "Paula",
    "Cecília"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Exercício 13"),
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            return Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  color: Colors.white54,
                  constraints: BoxConstraints.tight(
                      Size(constraints.maxWidth, constraints.maxHeight / 2)),
                  child: ListView.builder(
                    itemCount: aConfirmar.length,
                    itemBuilder: (context, index) {
                      return DismissibleTile(title: aConfirmar[index],
                        remove: false,
                        onDismiss: (value) {
                          setState(() {
                            aConfirmar.remove(value);

                            confirmados.add(value);
                          });
                        },);
                    },),
                ),
                Container(
                  constraints: BoxConstraints.tight(
                      Size(constraints.maxWidth, constraints.maxHeight / 2)),
                  child: ListView.builder(
                    itemCount: confirmados.length,
                    itemBuilder: (context, index) {
                      return DismissibleTile(title: confirmados[index], remove: true, onDismiss: (value) {
                        setState(() {
                          confirmados.remove(value);
                          aConfirmar.add(value);
                        });
                      },);
                    },),
                ),
              ],
            );
          },
        ));
  }
}
