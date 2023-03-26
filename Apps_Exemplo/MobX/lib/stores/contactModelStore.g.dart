// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contactModelStore.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ContactModelStore on _ContactModelStore, Store {
  Computed<bool>? _$favoriteComputed;

  @override
  bool get favorite =>
      (_$favoriteComputed ??= Computed<bool>(() => super.favorite,
              name: '_ContactModelStore.favorite'))
          .value;

  late final _$modelAtom =
      Atom(name: '_ContactModelStore.model', context: context);

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

  late final _$_ContactModelStoreActionController =
      ActionController(name: '_ContactModelStore', context: context);

  @override
  void setFavorite(bool prFavorite) {
    final _$actionInfo = _$_ContactModelStoreActionController.startAction(
        name: '_ContactModelStore.setFavorite');
    try {
      return super.setFavorite(prFavorite);
    } finally {
      _$_ContactModelStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
model: ${model},
favorite: ${favorite}
    ''';
  }
}
