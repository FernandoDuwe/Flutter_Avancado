import 'package:flutter/material.dart';
import 'package:flutter_avancado/widgets/centerChildMultiChildLayoutDelegate.dart';

class Exercicio7 extends StatelessWidget {
  const Exercicio7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Exercício 7"),
        ),
        body: CustomMultiChildLayout(
          delegate: CenterChildMultiChildLayoutDelegate(),
          children: [
            LayoutId(
              id: 1,
              child: Container(
                color: Colors.red,
              ),
            ),
            LayoutId(
              id: 2,
              child: Container(
                color: Colors.yellow,
              ),
            ),
            LayoutId(
              id: 3,
              child: Container(
                color: Colors.lightGreen,
              ),
            )
          ],
        ));
  }
}
