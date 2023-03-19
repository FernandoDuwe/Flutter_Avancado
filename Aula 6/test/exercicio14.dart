import 'package:flutter_avancado_aula4/models/calculo_media.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("Teste de notas", () {
    test("Teste com nenhuma nota", () {
      CalculoMedia vrMedia = CalculoMedia();

      double vrMediaFinal = vrMedia.calculaMedia([]);

      equals(vrMediaFinal, 0);
    });

    test("Testar o arredondamento das notas", () {
       CalculoMedia vrMedia = CalculoMedia();

       double vrMediaFinal = vrMedia.calculaMedia([7, 4, 8]);

       expect(vrMediaFinal, 6.33);
    });

    test("Teste negativo", () {
      CalculoMedia vrMedia = CalculoMedia();

      double vrMediaFinal = vrMedia.calculaMedia([7, 8, 9]);

      expect(vrMediaFinal == 9, false);
    });
  });
}