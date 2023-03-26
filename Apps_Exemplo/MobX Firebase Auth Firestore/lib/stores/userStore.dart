import 'dart:html';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobx/mobx.dart';
part 'userStore.g.dart';

class UserStore = _UserStore with _$UserStore;

abstract class _UserStore with Store {
  @observable
  bool logged = false;

  @observable
  bool userNotFound = false;

  @observable
  bool wrongPassowrd = false;

  @action
  Future<void> doLogin(String prUsername, String prPassword) async {
    try {
      UserCredential vrCredentials = await FirebaseAuth.instance.signInWithEmailAndPassword(email: prUsername, password: prPassword);

      this.logged = true;
      this.userNotFound = false;
      this.wrongPassowrd = false;
    }
    on FirebaseAuthException catch(e) {
      print(e.code);
      print(e.message);

      this.logged = false;

      if (e.code == "user-not-found")
        this.userNotFound = true;

      if (e.code == "wrong-password")
        this.wrongPassowrd = true;
    }
  }
}