import "package:flutter/material.dart";
import "package:flutter_avancado_aula1/models/pergunta_model.dart";
import "package:flutter_avancado_aula1/models/resposta_model.dart";
import "package:flutter_avancado_aula1/widgets/show_milhao_widget.dart";

class TestShowMScreen extends StatelessWidget {
  const TestShowMScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Teste do Show do Milhão"),
      ),
      body: ShowMilhaoWidget(
        perguntaModel: PerguntaModel(
          pergunta: "Pergunta Teste",
          respostaCorreta: 1,
          respostas: [
            RespostaModel(id: 1, titulo: "Resposta 1"),
            RespostaModel(id: 2, titulo: "Resposta 2"),
            RespostaModel(id: 3, titulo: "Resposta 3"),
            RespostaModel(id: 4, titulo: "Resposta 4"),
          ]
        ),
      ),
    );
  }
}
