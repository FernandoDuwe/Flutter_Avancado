import 'package:exercicio17/models/userModel.dart';
import 'package:exercicio17/states/userState.dart';
import 'package:exercicio17/stores/userStore.dart';
import 'package:flutter/material.dart';

class EditUser extends StatelessWidget {
  TextEditingController nameController =
      TextEditingController(text: userStore.state.user.name);

  TextEditingController userController =
      TextEditingController(text: userStore.state.user.userName);

  TextEditingController passwordController =
      TextEditingController(text: userStore.state.user.password);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Editar usuário atual"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          userStore.dispatch(UserAction(
              newState: UserState(userStore.state.navigatorkey,
                    UserModel(
                      name: nameController.text,
                      password: passwordController.text,
                      userName: userController.text,
                    )),
              action: UserActionType.editUser));

          Navigator.of(context).pushNamed("/home");
        },
        child: Icon(Icons.save),
      ),
      body: ListView(
        children: [
          Container(
            height: 120,
            alignment: Alignment.center,
            child: Icon(Icons.person, size: 64, color: Colors.blue),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: this.nameController,
              decoration: InputDecoration(labelText: "Nome"),
            ),
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
              decoration: InputDecoration(labelText: "Senha"),
            ),
          )
        ],
      ),
    );
  }
}
