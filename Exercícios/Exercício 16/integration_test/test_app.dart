import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:admin_test/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group("Teste do App de Administração", () {
    testWidgets("Login: Entrar e sair", (widgetTester) async {
      app.main();

      await widgetTester.pumpAndSettle();

      await widgetTester.enterText(
          find.byKey(ValueKey<String>("login_input_user")), "admin");

      await Future.delayed(Duration(seconds: 1));

      await widgetTester.enterText(
          find.byKey(ValueKey<String>("login_input_password")), "admin");

      await widgetTester
          .tap(find.byKey(ValueKey<String>("login_button_login")));

      await widgetTester.pumpAndSettle();

      await Future.delayed(Duration(seconds: 3));

      await widgetTester
          .tap(find.byKey(ValueKey<String>("home_button_logoff")));
    });

    testWidgets("Login: Usuário/Senha Inválido", (widgetTester) async {
      app.main();

      await widgetTester.pumpAndSettle();

      await widgetTester.enterText(
          find.byKey(ValueKey<String>("login_input_user")), "admin");

      await Future.delayed(Duration(seconds: 1));

      await widgetTester.enterText(
          find.byKey(ValueKey<String>("login_input_password")), "admin123");

      await Future.delayed(Duration(seconds: 1));

      await widgetTester
          .tap(find.byKey(ValueKey<String>("login_button_login")));

      await widgetTester.pumpAndSettle();

      await Future.delayed(Duration(seconds: 3));

      expect(find.text("Usuário/Senha Inválido"), findsOneWidget);
    });

    testWidgets("Login: Entrar e clicar no botão adicionar 10x",
        (widgetTester) async {
      app.main();

      await widgetTester.pumpAndSettle();

      await widgetTester.enterText(
          find.byKey(ValueKey<String>("login_input_user")), "admin");

      await Future.delayed(Duration(seconds: 1));

      await widgetTester.enterText(
          find.byKey(ValueKey<String>("login_input_password")), "admin");

      await widgetTester
          .tap(find.byKey(ValueKey<String>("login_button_login")));

      await widgetTester.pumpAndSettle();

      await Future.delayed(Duration(seconds: 3));

      for (int i = 1; i <= 10; i++) {
        await widgetTester.tap(find.byKey(ValueKey<String>("home_button_add")));

        await widgetTester.pumpAndSettle();
      }

      await Future.delayed(Duration(seconds: 3));
    });
  });
}
