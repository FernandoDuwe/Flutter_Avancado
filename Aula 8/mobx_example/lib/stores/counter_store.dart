import 'package:mobx/mobx.dart';

part 'counter_store.g.dart';

class CounterStore = _CounterStore with _$CounterStore;

abstract class _CounterStore with Store {
  @observable
  int count = 0;

  @computed
  bool get countIsNegative => count < 0;

  @computed
  bool get countIsPositive => count > 0;

  @action
  void increment() {
    count = count + 1;
  }

  @action
  void decrement() {
    count = count - 1;
  }
}