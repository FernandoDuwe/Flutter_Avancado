// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contactListStore.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ContactListStore on _ContactListStore, Store {
  Computed<int>? _$contactCountComputed;

  @override
  int get contactCount =>
      (_$contactCountComputed ??= Computed<int>(() => super.contactCount,
              name: '_ContactListStore.contactCount'))
          .value;
  Computed<int>? _$favoriteCountComputed;

  @override
  int get favoriteCount =>
      (_$favoriteCountComputed ??= Computed<int>(() => super.favoriteCount,
              name: '_ContactListStore.favoriteCount'))
          .value;

  late final _$_ContactListStoreActionController =
      ActionController(name: '_ContactListStore', context: context);

  @override
  void addContact(ContactModel prModel) {
    final _$actionInfo = _$_ContactListStoreActionController.startAction(
        name: '_ContactListStore.addContact');
    try {
      return super.addContact(prModel);
    } finally {
      _$_ContactListStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeContact(ContactModelStore prModel) {
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
contactCount: ${contactCount},
favoriteCount: ${favoriteCount}
    ''';
  }
}
