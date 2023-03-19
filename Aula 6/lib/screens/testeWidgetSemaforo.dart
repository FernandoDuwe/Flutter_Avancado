import 'package:flutter/material.dart';
import 'package:flutter_avancado_aula4/widgets/semaforoWidget.dart';

class TesteWidgetSemaforo extends StatelessWidget {
  const TesteWidgetSemaforo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Teste Widget de semáforo"),
      ),
      body: Center(
        child: Semaforo(),
      ),
    );
  }
}
