import 'package:mobx/mobx.dart';

part 'calc_store.g.dart';

class CalcStore = _CalcStore with _$CalcStore;

enum CalcOperation { sum, dec, mult, div }

abstract class _CalcStore with Store {
  @observable
  double value1 = 0;

  @observable
  double value2 = 0;

  @observable
  int currentOperation = CalcOperation.sum.index;

  @observable
  String errorMessage = "";

  @computed
  bool get hasError => errorMessage.isNotEmpty;

  @computed
  double get result {
    switch (CalcOperation.values[currentOperation]) {
      case CalcOperation.sum:
        return value1 + value2;

      case CalcOperation.dec:
        return value1 - value2;

      case CalcOperation.mult:
        return value1 * value2;

      case CalcOperation.div:
        if (value2 == 0)
          return 0;

        return value1 / value2;
    }
  }

  void _validate() {
    errorMessage = "";

    if ((value2 == 0) && (currentOperation == CalcOperation.div.index))
      errorMessage = "Divisão por zero não é permitida";
  }

  @action
  void setValue1(String value) {
    double? newValue = double.tryParse(value);

    value1 = (newValue ?? 0);

    _validate();
  }

  @action
  void setValue2(String value) {
    double? newValue = double.tryParse(value);

    value2 = (newValue ?? 0);

    _validate();
  }

  @action
  void setOperation(CalcOperation value) {
    this.currentOperation = value.index;

    _validate();
  }
}
