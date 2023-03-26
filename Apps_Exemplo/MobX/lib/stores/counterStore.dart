import 'package:mobx/mobx.dart';
part 'counterStore.g.dart';

class CounterStore = _CounterStore with _$CounterStore;

abstract class _CounterStore with Store {
  @observable
  int counter = 0;

  @computed
  int get negativeCounter => this.counter * -1;

  @action
  void incCounter() {
    this.counter++;
  }

  @action
  void decCounter() {
    this.counter--;
  }
}