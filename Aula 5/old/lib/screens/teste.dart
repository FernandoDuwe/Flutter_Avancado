import 'package:flutter/material.dart';

class TesteScreen extends StatelessWidget {
  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Teste"),
      ),
      body: Center(
        child: Text("${this.contador}"),
      )
    );
  }
}
