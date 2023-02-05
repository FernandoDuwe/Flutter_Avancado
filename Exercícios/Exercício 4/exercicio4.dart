import 'package:flutter/material.dart';

class Exercicio4 extends StatelessWidget {
  const Exercicio4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercício 4"),
      ),
      body: Center(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints contraints) {
            if (contraints.maxHeight > 400) {
              return Column(
                children: [
                  Icon(Icons.accessible_forward, size: 128),
                  Icon(Icons.call_missed_outgoing_rounded, size: 128),
                  Icon(Icons.account_balance, size: 128,)
                ],
              );
            } else {
              return Row(
                children: [
                  Icon(Icons.accessible_forward, size: 128),
                  Icon(Icons.call_missed_outgoing_rounded, size: 128),
                  Icon(Icons.account_balance, size: 128,)
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
