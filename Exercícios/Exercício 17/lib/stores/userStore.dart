import 'package:exercicio17/models/userModel.dart';
import 'package:exercicio17/states/userState.dart';
import 'package:flutter/cupertino.dart';
import 'package:redux/redux.dart';

final Store<UserState> userStore = Store<UserState>(userReducer,
    initialState: UserState(
        GlobalKey<NavigatorState>(),
        UserModel(
            name: "Fernando Duwe", userName: "admin", password: "admin")));
