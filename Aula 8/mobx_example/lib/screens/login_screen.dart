import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../stores/login_store.dart';

class LoginScreen extends StatelessWidget {
  LoginStore loginStore = LoginStore();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Efetuar login"),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Preencha seus dados de acesso"),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                onChanged: (value) => loginStore.setUserName(value),
                decoration: InputDecoration(labelText: "Usuário ou e-mail"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Observer(
                builder: (context) {
                  return TextField(
                    onChanged: (value) => loginStore.setPassword(value),
                    decoration: InputDecoration(
                        labelText: "Senha",
                        suffix: IconButton(
                          icon: (loginStore.hidePassword
                              ? Icon(Icons.remove_red_eye_outlined)
                              : Icon(Icons.remove_red_eye)),
                          onPressed: loginStore.setHidePassword,
                        )),
                    obscureText: loginStore.hidePassword,
                  );
                },
              )
            ),
            Observer(
              builder: (context) {
                if (loginStore.hasError)
                  return Text(
                    loginStore.errorMessage,
                    style: TextStyle(color: Colors.red),
                  );

                return Container(
                  height: 0,
                  width: 0,
                );
              },
            ),
            Observer(
              builder: (context) {
                return ElevatedButton(
                    onPressed: loginStore.canLogin ? loginStore.login : null,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.login),
                        SizedBox(
                          width: 20,
                        ),
                        Text("Login")
                      ],
                    ));
              },
            )
          ],
        ),
      ),
    );
  }
}
