import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_avancado_aula4/widgets/semaforoWidget.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets("Teste do semaforo", (widgetTester) async {
    await widgetTester.pumpWidget(
        MaterialApp(
            home: Scaffold(body: Semaforo())
        ));

    expect(find.byKey(ValueKey<String>("container_red")), findsOneWidget);
    expect(find.byKey(ValueKey<String>("container_yellow")), findsNothing);
    expect(find.byKey(ValueKey<String>("container_green")), findsNothing);

    var vrButton = find.byIcon(Icons.run_circle_outlined);

    await widgetTester.tap(vrButton);

    await widgetTester.pump();

    expect(find.byKey(ValueKey<String>("container_green")), findsOneWidget);

    await widgetTester.tap(vrButton);

    await widgetTester.pump();

    expect(find.byKey(ValueKey<String>("container_yellow")), findsOneWidget);

    await widgetTester.tap(vrButton);

    await widgetTester.pump();

    expect(find.byKey(ValueKey<String>("container_red")), findsOneWidget);
  });
}