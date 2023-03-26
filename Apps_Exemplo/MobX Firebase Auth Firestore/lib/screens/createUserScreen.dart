import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class CreateUserScreen extends StatelessWidget {
  final TextEditingController userController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  CreateUserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Novo usuário"),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
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
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: IconButton(
                      onPressed: () {
                        FirebaseAuth.instance.createUserWithEmailAndPassword(
                            email: this.userController.text,
                            password: this.passwordController.text);

                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.add_circle_outlined,
                        color: Colors.green,
                      )),
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
