import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_avancado_aula4/models/questionModel.dart';
import 'package:flutter_avancado_aula4/widgets/showDoMilhaWidget.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("Show do Milhão", () {
    testWidgets("1º - Teste de renderização das perguntas", (widgetTester) async {
      QuestionModel vrModel = QuestionModel(
        pergunta: "Teste 1",
        respostas: ["Resposta 1", "Resposta 2", "Resposta 3", "Resposta 4"],
        respostaCorretaIndex: 1
      );

      await widgetTester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ShowDoMilhaoWidget(
              pergunta: vrModel,
            ),
          ),
        )
      );
      
      expect(find.byType(ElevatedButton), findsNWidgets(vrModel.respostas.length));
    });
    
    testWidgets("2º - Pergunta renderizada em tela", (widgetTester) async {
      QuestionModel vrModel = QuestionModel(
          pergunta: "Teste 1",
          respostas: ["Resposta 1", "Resposta 2", "Resposta 3", "Resposta 4"],
          respostaCorretaIndex: 1
      );

      await widgetTester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              body: ShowDoMilhaoWidget(
                pergunta: vrModel,
              ),
            ),
          )
      );

      expect(find.text(vrModel.pergunta), findsOneWidget);
    });

    testWidgets("3º - Testando a opção correta", (widgetTester) async {
      QuestionModel vrModel = QuestionModel(
          pergunta: "Teste 1",
          respostas: ["Resposta 1", "Resposta 2", "Resposta 3", "Resposta 4"],
          respostaCorretaIndex: 1
      );

      await widgetTester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              body: ShowDoMilhaoWidget(
                pergunta: vrModel,
              ),
            ),
          )
      );
      
      await widgetTester.tap(find.text(vrModel.respostas[vrModel.respostaCorretaIndex]));

      await widgetTester.pump();

      expect(find.text("Certa resposta!"), findsOneWidget);
    });
  });
}