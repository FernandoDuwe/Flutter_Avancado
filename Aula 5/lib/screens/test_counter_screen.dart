import "package:flutter/material.dart";
import "package:flutter_avancado_aula1/widgets/counter_widget.dart";

class TestCounterScreen extends StatelessWidget {
  const TestCounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test Counter Screen"),
      ),
      body: Center(
        child: CounterWidget(
          permiteValorNegativo: true,
        ),
      ),
    );
  }
}
