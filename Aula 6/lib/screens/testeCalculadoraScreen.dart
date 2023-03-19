import 'package:flutter/material.dart';

import '../widgets/calculadoraWidget.dart';

class TesteCalculadoraScreen extends StatelessWidget {
  const TesteCalculadoraScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Teste da Calculadora"),
      ),
      body: CalculadoraWidget(),
    );
  }
}
