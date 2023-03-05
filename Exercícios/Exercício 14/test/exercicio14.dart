import 'package:flutter_test/flutter_test.dart';
import 'package:projeto_aula_avancado/models/averageGradeModel.dart';

void main() {
  test("Testes de notas", ()  {
    AverageGradeModel vrAverage = AverageGradeModel("Fernando Duwe");

    expect(vrAverage.calculate([]), 0);

    expect(vrAverage.calculate([9.5, 9.0, 8.4]), 8.97);

    expect(vrAverage.calculate([9.5, 9.0, 8.4]) != 7, false);
  });
}
