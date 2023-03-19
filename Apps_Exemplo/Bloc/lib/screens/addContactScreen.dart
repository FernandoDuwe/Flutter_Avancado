import 'package:bloc_exemplo/models/contactModel.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';

import '../bloc/ContactBloc.dart';

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
              BlocProvider.getBloc<ContactBloc>().addContact.add(ContactModel(
                nome: this.nomeController.text,
                email: this.emailController.text
              ));

              Navigator.pop(context);
            }, child: Text("Salvar"))
          ],
        ),
      ),
    );
  }
}
