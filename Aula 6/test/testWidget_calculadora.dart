import 'package:flutter/material.dart';
import 'package:flutter_avancado_aula4/widgets/calculadoraWidget.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("Teste da calculadora", () {
    testWidgets("Teste de visual", (widgetTester) async {
      await widgetTester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: CalculadoraWidget(),
        ),
      ));

      expect(find.byType(TextFormField), findsNWidgets(2));
      expect(find.byType(ElevatedButton), findsNWidgets(4));
    });

    testWidgets("Teste de soma", (widgetTester) async {
      await widgetTester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: CalculadoraWidget(),
        ),
      ));

      // Soma 2 + 2
      await widgetTester.enterText(find.byKey(ValueKey<String>("calculadora_valor1")), "2");

      await widgetTester.tap(find.text("Soma"));

      await widgetTester.pump();

      // aqui vai aparecer o alert
      expect(find.text("O valor 2 é obrigatório"), findsOneWidget);

      // vou fechar o alert antes de tentar novamente
      await widgetTester.tap(find.text("Ok"));

      await widgetTester.pump();

      await widgetTester.enterText(find.byKey(ValueKey<String>("calculadora_valor2")), "2");

      await widgetTester.tap(find.byKey(ValueKey<String>("calculadora_soma")));

      await widgetTester.pump();

      expect(find.text("4.00"), findsOneWidget);

      var vrTextResult = find.byKey(ValueKey<String>("calculadora_resultado"));

      // Se eu quiser buscar o widget que foi encontrado
      // print((vrTextResult.first.evaluate().single.widget as Text).data);
    });
  });
}
