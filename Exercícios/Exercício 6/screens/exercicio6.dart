import 'package:flutter/material.dart';

import '../widgets/centerChildSingleChildLayoutDelegate.dart';

class Exercicio6 extends StatelessWidget {
  final ValueNotifier<Size> _size =
      ValueNotifier<Size>(const Size(200.0, 100.0));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Exercício 6"),
        ),
        body: CustomSingleChildLayout(
          delegate: CenterChildSingleChildLayoutDelegate(),
          child: Container(color: Colors.teal),
        ));
  }
}
