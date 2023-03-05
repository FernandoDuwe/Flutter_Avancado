import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:projeto_aula_avancado/models/questionModel.dart';
import 'package:projeto_aula_avancado/screens/millionShow.dart';

void main() {
  testWidgets("Teste do Show do Milhão", (widgetTester) async {
    QuestionModel vrModel = QuestionModel(
        "Qual é o maior rio do mundo (em extensão)?",
        0,
        ["Rio Amazonas", "Rio Nilo", "Rio Mississipi", "Rio Paraná"]);

    await widgetTester
        .pumpWidget(MaterialApp(home: MillionShow(model: vrModel)));

    // Primeiro teste, verifica se todas as perguntas foram renderizadas
    expect(find.byType(ElevatedButton), findsNWidgets(vrModel.options.length));

    // Segundo teste, verifica se existe um texto com a pergunta em tela
    expect(find.text(vrModel.question), findsOneWidget);

    // Terceiro teste, testa a resposta da pergunta
    await widgetTester.tap(find.text(vrModel.options[vrModel.correctResponse]));

    await widgetTester.pump();

    expect(find.text("Certo"), findsOneWidget);
  });
}
