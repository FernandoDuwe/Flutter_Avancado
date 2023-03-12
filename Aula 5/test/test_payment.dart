import 'package:flutter_avancado_aula4/models/paymentModel.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("Testar se 2 + 2 = 4", () {
    expect(2 + 2, 4);
  });

  group("Testes de folha", () {
    test("Rotina de verificação de descontos", () {
      PaymentModel payment = PaymentModel(base: 1000);

      expect(payment.irpf(), 10);

      expect(payment.inss(), 70);
    });

    test("Rotina de verificação de isenções", () {
      PaymentModel payment = PaymentModel(base: 2500);

      expect(payment.isIsentaIR(), false);
    });
  });
}