import 'package:flutter/material.dart';
import 'package:mobx_contatos/models/contactModel.dart';
import 'package:mobx_contatos/stores/contactListStore.dart';
import 'package:mobx_contatos/stores/contactStore.dart';
import 'package:provider/provider.dart';

class ContactForm extends StatelessWidget {
  TextEditingController nomeController = TextEditingController();

  ContactForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            controller: this.nomeController,
            decoration: InputDecoration(labelText: "Nome do contato"),
          ),
        ),
        ElevatedButton(
            onPressed: () {
              ContactStore vrStore = ContactStore();
              vrStore.setName(this.nomeController.text);
              
              Provider.of<ContactListStore>(context, listen: false)
                  .addContact(vrStore);

              Navigator.of(context).pop();
            },
            child: Text("Salvar"))
      ],
    );
  }
}
