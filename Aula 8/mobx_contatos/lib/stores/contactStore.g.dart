// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contactStore.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ContactStore on _ContactStore, Store {
  Computed<String>? _$nomeComputed;

  @override
  String get nome => (_$nomeComputed ??=
          Computed<String>(() => super.nome, name: '_ContactStore.nome'))
      .value;
  Computed<bool>? _$favoritoComputed;

  @override
  bool get favorito => (_$favoritoComputed ??=
          Computed<bool>(() => super.favorito, name: '_ContactStore.favorito'))
      .value;

  late final _$modelAtom = Atom(name: '_ContactStore.model', context: context);

  @override
  ContactModel get model {
    _$modelAtom.reportRead();
    return super.model;
  }

  @override
  set model(ContactModel value) {
    _$modelAtom.reportWrite(value, super.model, () {
      super.model = value;
    });
  }

  late final _$_ContactStoreActionController =
      ActionController(name: '_ContactStore', context: context);

  @override
  void setName(String prNome) {
    final _$actionInfo = _$_ContactStoreActionController.startAction(
        name: '_ContactStore.setName');
    try {
      return super.setName(prNome);
    } finally {
      _$_ContactStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setFavorite(bool prFavorite) {
    final _$actionInfo = _$_ContactStoreActionController.startAction(
        name: '_ContactStore.setFavorite');
    try {
      return super.setFavorite(prFavorite);
    } finally {
      _$_ContactStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
model: ${model},
nome: ${nome},
favorito: ${favorito}
    ''';
  }
}
