import 'package:contactlist_redux/models/contactModel.dart';
import 'package:contactlist_redux/states/contactListState.dart';
import 'package:contactlist_redux/stores/contactListStore.dart';
import 'package:flutter/material.dart';

class AddContactScreen extends StatelessWidget {
  TextEditingController nomeController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Adicionar contato"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: this.nomeController,
                decoration: InputDecoration(
                    labelText: "Nome do contato"
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: this.emailController,
                decoration: InputDecoration(
                    labelText: "E-mail do contato"
                ),
              ),
            ),
            ElevatedButton(onPressed: () {
              contactListStore.dispatch(ContactListAction(ContactModel(
                  nome: this.nomeController.text,
                  email: this.emailController.text), ContactListActionType.Add));

              Navigator.pop(context);
            }, child: Text("Salvar"))
          ],
        ),
      ),
    );
  }
}
