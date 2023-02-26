import 'package:flutter/material.dart';

import '../models/invitedMemberModel.dart';

class Exercicio13 extends StatefulWidget {
  const Exercicio13({Key? key}) : super(key: key);

  @override
  State<Exercicio13> createState() => _Exercicio13State();
}

class _Exercicio13State extends State<Exercicio13> {
  int internalID = 3;

  List<InvitedMemberModel> list1 = [
    InvitedMemberModel(1, "Convidado 1"),
    InvitedMemberModel(2, "Convidado 2"),
    InvitedMemberModel(3, "Convidado 3"),
  ];
  List<InvitedMemberModel> list2 = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercício 13"),
      ),
      body: Column(
        children: [
          Flexible(
            flex: 1,
            child: Container(
                alignment: Alignment.centerLeft,
                color: Colors.redAccent,
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                          "   Convidados disponíveis (Deslize para a direita para confirmar)",
                          style: TextStyle(color: Colors.white)),
                    ),
                    Icon(Icons.arrow_forward_sharp, color: Colors.white)
                  ],
                )),
          ),
          Flexible(
              flex: 4,
              child: ListView.builder(
                itemCount: this.list1.length,
                itemBuilder: (context, index) {
                  return Dismissible(
                      direction: DismissDirection.startToEnd,
                      key: ValueKey<int>(this.list1[index].id),
                      background: Container(
                        alignment: Alignment.centerLeft,
                        color: Colors.green,
                        child: Icon(
                          Icons.arrow_downward_sharp,
                          color: Colors.white,
                        ),
                      ),
                      onDismissed: (direction) {
                        setState(() {
                          InvitedMemberModel currentModel = this.list1[index];

                          this.list1.removeAt(index);

                          this.list2.add(currentModel);
                        });
                      },
                      child: ListTile(
                        leading: Icon(
                          Icons.person,
                          color: Colors.blueGrey,
                        ),
                        title: Text(this.list1[index].title),
                        subtitle: Text("Convidado disponível"),
                      ));
                },
              )),
          Flexible(
            flex: 1,
            child: Container(
                alignment: Alignment.centerLeft,
                color: Colors.green,
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                          "  Convidados confirmados (Deslize para a direita para desconvidar)",
                          style: TextStyle(color: Colors.white)),
                    ),
                    Icon(Icons.arrow_back, color: Colors.white)
                  ],
                )),
          ),
          Flexible(
              flex: 4,
              child: ListView.builder(
                itemCount: this.list2.length,
                itemBuilder: (context, index) {
                  return Dismissible(
                      direction: DismissDirection.endToStart,
                      key: ValueKey<int>(this.list2[index].id),
                      background: Container(
                        alignment: Alignment.centerRight,
                        color: Colors.redAccent,
                        child: Icon(
                          Icons.arrow_upward,
                          color: Colors.white,
                        ),
                      ),
                      onDismissed: (direction) {
                        setState(() {
                          InvitedMemberModel currentModel = this.list2[index];

                          this.list2.removeAt(index);

                          this.list1.add(currentModel);
                        });
                      },
                      child: ListTile(
                        leading: Icon(Icons.person, color: Colors.black),
                        title: Text(this.list2[index].title),
                        subtitle: Text("Convidado confirmado"),
                      ));
                },
              )),
        ],
      ),
    );
  }
}
