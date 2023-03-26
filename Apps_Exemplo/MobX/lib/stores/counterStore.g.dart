// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counterStore.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CounterStore on _CounterStore, Store {
  Computed<int>? _$negativeCounterComputed;

  @override
  int get negativeCounter =>
      (_$negativeCounterComputed ??= Computed<int>(() => super.negativeCounter,
              name: '_CounterStore.negativeCounter'))
          .value;

  late final _$counterAtom =
      Atom(name: '_CounterStore.counter', context: context);

  @override
  int get counter {
    _$counterAtom.reportRead();
    return super.counter;
  }

  @override
  set counter(int value) {
    _$counterAtom.reportWrite(value, super.counter, () {
      super.counter = value;
    });
  }

  late final _$_CounterStoreActionController =
      ActionController(name: '_CounterStore', context: context);

  @override
  void incCounter() {
    final _$actionInfo = _$_CounterStoreActionController.startAction(
        name: '_CounterStore.incCounter');
    try {
      return super.incCounter();
    } finally {
      _$_CounterStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decCounter() {
    final _$actionInfo = _$_CounterStoreActionController.startAction(
        name: '_CounterStore.decCounter');
    try {
      return super.decCounter();
    } finally {
      _$_CounterStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
counter: ${counter},
negativeCounter: ${negativeCounter}
    ''';
  }
}
