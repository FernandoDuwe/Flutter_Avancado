import 'package:exercicio17/models/userModel.dart';
import 'package:flutter/material.dart';

enum UserActionType { editUser, login, logoff, goOnline, goOffline }

class UserState {
  late UserModel user;
  late GlobalKey<NavigatorState> navigatorkey;

  UserState(this.navigatorkey, this.user);
}

class UserAction {
  late UserState newState;
  late UserActionType action;

  UserAction({required this.newState, required this.action});
}

UserState userReducer(UserState prCurrentState, dynamic prAction) {
  if (prAction.action == UserActionType.editUser) {
    return UserState(prCurrentState.navigatorkey, prAction.newState.user);
  }

  if ((prAction.action == UserActionType.login) &&
      (!prCurrentState.user.logged)) {
    if (prCurrentState.user.login(
        prAction.newState.user.userName, prAction.newState.user.password)) {
      UserModel vrModel = prCurrentState.user;
      vrModel.logged = true;

      prCurrentState.navigatorkey.currentState!.pushReplacementNamed("/home");

      return UserState(prCurrentState.navigatorkey, vrModel);
    }
  }

  if ((prAction.action == UserActionType.logoff) &&
      (prCurrentState.user.logged)) {
    UserModel vrModel = prCurrentState.user;
    vrModel.logged = false;

    prCurrentState.navigatorkey.currentState!.pushReplacementNamed("/");

    return UserState(prCurrentState.navigatorkey, vrModel);
  }

  if (prAction.action == UserActionType.goOnline) {
    UserModel vrModel = prCurrentState.user;
    vrModel.goOnLine();

    return UserState(prCurrentState.navigatorkey, vrModel);
  }

  if (prAction.action == UserActionType.goOffline) {
    UserModel vrModel = prCurrentState.user;
    vrModel.goOffLine();

    return UserState(prCurrentState.navigatorkey, vrModel);
  }

  return prCurrentState;
}
