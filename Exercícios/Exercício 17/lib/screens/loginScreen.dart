import 'package:exercicio17/models/userModel.dart';
import 'package:exercicio17/states/userState.dart';
import 'package:exercicio17/stores/userStore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class LoginScreen extends StatelessWidget {
  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueGrey,
        onPressed: () {
          userStore.dispatch(UserAction(
              newState: UserState(
                  userStore.state.navigatorkey,
                  UserModel(
                      name: this.userController.text,
                      userName: this.userController.text,
                      password: this.passwordController.text)),
              action: UserActionType.login));
        },
        child: Icon(Icons.login),
      ),
      body: ListView(
        children: [
          Container(
            height: 300,
            alignment: Alignment.center,
            child: Icon(Icons.account_balance, size: 128, color: Colors.green),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: this.userController,
              decoration: InputDecoration(labelText: "Usuário"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: this.passwordController,
              obscureText: true,
              decoration: InputDecoration(labelText: "Senha"),
            ),
          )
        ],
      ),
    );
  }
}
