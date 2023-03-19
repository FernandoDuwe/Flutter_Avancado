import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_avancado_aula4/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group("Teste App de Exemplos", () {
    testWidgets("Teste de pesquisa", (widgetTester) async {
      app.main();

      await widgetTester.pumpAndSettle();

      await widgetTester.enterText(find.byKey(ValueKey<String>("home_search_edit")), "15");

      await widgetTester.pump();

      await Future.delayed(Duration(seconds: 1));

      await widgetTester.tap(find.text("Exercício 15 - Sala"));

      await widgetTester.pump();

      await Future.delayed(Duration(seconds: 1));

      await widgetTester.tap(find.text("Rio Amazonas"));

      await Future.delayed(Duration(seconds: 5));

      expect(find.text("Certa resposta!"), findsOneWidget);
    });
  });
}