import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_firebase_login/stores/userStore.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  UserStore user = UserStore();

  @override
  void didChangeDependencies() {
    reaction((p0) => user.logged, (p0) {
      if (p0) Navigator.of(context).pushReplacementNamed("/home");
    });
  }

  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Widget _getErrorBox(String prMessage) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(prMessage, style: TextStyle(color: Colors.red)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: CircleAvatar(
                    maxRadius: 65,
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.person, size: 64),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextField(
                    controller: this.userController,
                    decoration: InputDecoration(labelText: "Usuário/E-mail"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextField(
                    controller: this.passwordController,
                    decoration: InputDecoration(labelText: "Senha"),
                    obscureText: true,
                  ),
                ),
                Observer(builder: (context) {
                  if (this.user.userNotFound)
                    return this._getErrorBox("Usuário não encontrato");

                  if (this.user.wrongPassowrd)
                    return this._getErrorBox("Usuário/Senha inválida");

                  return Container();
                }),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: IconButton(
                      onPressed: () => user.doLogin(this.userController.text,
                          this.passwordController.text),
                      icon: Icon(
                        Icons.directions_run,
                        color: Colors.green,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Ainda não tem cadastro?"),
                      TextButton(
                          onPressed: () =>
                              Navigator.of(context).pushNamed("/newUser"),
                          child: Text("Cadastre-se aqui"))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.black,
          Colors.black45,
          Colors.black12,
          Colors.blueGrey,
        ])),
      ),
    );
  }
}
