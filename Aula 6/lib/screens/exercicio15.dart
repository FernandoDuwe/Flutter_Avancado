import 'package:flutter/material.dart';
import 'package:flutter_avancado_aula4/models/questionModel.dart';
import 'package:flutter_avancado_aula4/widgets/showDoMilhaWidget.dart';

class Exercicio15 extends StatelessWidget {
  const Exercicio15({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ShowDoMilhaoWidget(
        pergunta: QuestionModel(
          pergunta: "Qual é o maior rio do mundo?",
          respostas: ["Rio Amazonas", "Rio Nilo", "Rio Itajaí-Açu", "Rio Paraná"],
          respostaCorretaIndex: 0,
        ),
      ),
    );
  }
}
