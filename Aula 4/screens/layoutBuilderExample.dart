import 'package:flutter/material.dart';

class LayoutBuilderExample extends StatelessWidget {
  const LayoutBuilderExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LayoutBuilder Exemplo"),
      ),
      body: LayoutBuilder(
        builder: (p0, p1) {
          if (p1.maxHeight >= 300) {
            return Container(
              color: Colors.blue,
              width: p1.maxWidth / 2,
            );
          } else {
            return Container(
              color: Colors.greenAccent,
              width: p1.maxWidth,
            );
          }
        },
      ),
    );
  }
}
