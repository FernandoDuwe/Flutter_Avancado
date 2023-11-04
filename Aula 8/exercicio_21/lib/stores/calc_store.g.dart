// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calc_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CalcStore on _CalcStore, Store {
  Computed<bool>? _$hasErrorComputed;

  @override
  bool get hasError => (_$hasErrorComputed ??=
          Computed<bool>(() => super.hasError, name: '_CalcStore.hasError'))
      .value;
  Computed<double>? _$resultComputed;

  @override
  double get result => (_$resultComputed ??=
          Computed<double>(() => super.result, name: '_CalcStore.result'))
      .value;

  late final _$value1Atom = Atom(name: '_CalcStore.value1', context: context);

  @override
  double get value1 {
    _$value1Atom.reportRead();
    return super.value1;
  }

  @override
  set value1(double value) {
    _$value1Atom.reportWrite(value, super.value1, () {
      super.value1 = value;
    });
  }

  late final _$value2Atom = Atom(name: '_CalcStore.value2', context: context);

  @override
  double get value2 {
    _$value2Atom.reportRead();
    return super.value2;
  }

  @override
  set value2(double value) {
    _$value2Atom.reportWrite(value, super.value2, () {
      super.value2 = value;
    });
  }

  late final _$currentOperationAtom =
      Atom(name: '_CalcStore.currentOperation', context: context);

  @override
  int get currentOperation {
    _$currentOperationAtom.reportRead();
    return super.currentOperation;
  }

  @override
  set currentOperation(int value) {
    _$currentOperationAtom.reportWrite(value, super.currentOperation, () {
      super.currentOperation = value;
    });
  }

  late final _$errorMessageAtom =
      Atom(name: '_CalcStore.errorMessage', context: context);

  @override
  String get errorMessage {
    _$errorMessageAtom.reportRead();
    return super.errorMessage;
  }

  @override
  set errorMessage(String value) {
    _$errorMessageAtom.reportWrite(value, super.errorMessage, () {
      super.errorMessage = value;
    });
  }

  late final _$_CalcStoreActionController =
      ActionController(name: '_CalcStore', context: context);

  @override
  void setValue1(String value) {
    final _$actionInfo =
        _$_CalcStoreActionController.startAction(name: '_CalcStore.setValue1');
    try {
      return super.setValue1(value);
    } finally {
      _$_CalcStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setValue2(String value) {
    final _$actionInfo =
        _$_CalcStoreActionController.startAction(name: '_CalcStore.setValue2');
    try {
      return super.setValue2(value);
    } finally {
      _$_CalcStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setOperation(CalcOperation value) {
    final _$actionInfo = _$_CalcStoreActionController.startAction(
        name: '_CalcStore.setOperation');
    try {
      return super.setOperation(value);
    } finally {
      _$_CalcStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value1: ${value1},
value2: ${value2},
currentOperation: ${currentOperation},
errorMessage: ${errorMessage},
hasError: ${hasError},
result: ${result}
    ''';
  }
}
