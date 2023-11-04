// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contactListStore.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ContactListStore on _ContactListStore, Store {
  Computed<int>? _$counterComputed;

  @override
  int get counter => (_$counterComputed ??=
          Computed<int>(() => super.counter, name: '_ContactListStore.counter'))
      .value;
  Computed<int>? _$favoriteCounterComputed;

  @override
  int get favoriteCounter =>
      (_$favoriteCounterComputed ??= Computed<int>(() => super.favoriteCounter,
              name: '_ContactListStore.favoriteCounter'))
          .value;

  late final _$_ContactListStoreActionController =
      ActionController(name: '_ContactListStore', context: context);

  @override
  void addContact(ContactStore prModel) {
    final _$actionInfo = _$_ContactListStoreActionController.startAction(
        name: '_ContactListStore.addContact');
    try {
      return super.addContact(prModel);
    } finally {
      _$_ContactListStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeContact(ContactStore prModel) {
    final _$actionInfo = _$_ContactListStoreActionController.startAction(
        name: '_ContactListStore.removeContact');
    try {
      return super.removeContact(prModel);
    } finally {
      _$_ContactListStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
counter: ${counter},
favoriteCounter: ${favoriteCounter}
    ''';
  }
}
