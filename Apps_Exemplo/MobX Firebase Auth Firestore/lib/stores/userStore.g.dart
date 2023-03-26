// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userStore.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$UserStore on _UserStore, Store {
  late final _$loggedAtom = Atom(name: '_UserStore.logged', context: context);

  @override
  bool get logged {
    _$loggedAtom.reportRead();
    return super.logged;
  }

  @override
  set logged(bool value) {
    _$loggedAtom.reportWrite(value, super.logged, () {
      super.logged = value;
    });
  }

  late final _$userNotFoundAtom =
      Atom(name: '_UserStore.userNotFound', context: context);

  @override
  bool get userNotFound {
    _$userNotFoundAtom.reportRead();
    return super.userNotFound;
  }

  @override
  set userNotFound(bool value) {
    _$userNotFoundAtom.reportWrite(value, super.userNotFound, () {
      super.userNotFound = value;
    });
  }

  late final _$wrongPassowrdAtom =
      Atom(name: '_UserStore.wrongPassowrd', context: context);

  @override
  bool get wrongPassowrd {
    _$wrongPassowrdAtom.reportRead();
    return super.wrongPassowrd;
  }

  @override
  set wrongPassowrd(bool value) {
    _$wrongPassowrdAtom.reportWrite(value, super.wrongPassowrd, () {
      super.wrongPassowrd = value;
    });
  }

  late final _$doLoginAsyncAction =
      AsyncAction('_UserStore.doLogin', context: context);

  @override
  Future<void> doLogin(String prUsername, String prPassword) {
    return _$doLoginAsyncAction
        .run(() => super.doLogin(prUsername, prPassword));
  }

  @override
  String toString() {
    return '''
logged: ${logged},
userNotFound: ${userNotFound},
wrongPassowrd: ${wrongPassowrd}
    ''';
  }
}
