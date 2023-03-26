import 'package:flutter/material.dart';
import 'package:mobx_example/models/contactModel.dart';
import 'package:mobx_example/stores/contactListStore.dart';
import 'package:provider/provider.dart';

class ContactForm extends StatelessWidget {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController nomeController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController telefoneController = TextEditingController();

  ContactForm({Key? key}) : super(key: key);

  String? _validate(String? prValue) {
    if (prValue == "") return "O campo é obrigatório";
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: this.formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              controller: this.nomeController,
              validator: this._validate,
              decoration: InputDecoration(labelText: "Nome"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              controller: this.emailController,
              validator: this._validate,
              decoration: InputDecoration(labelText: "E-mail"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              controller: this.telefoneController,
              validator: this._validate,
              decoration: InputDecoration(labelText: "Telefone"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: IconButton(
                onPressed: () {
                  if (this.formKey.currentState!.validate()) {
                    Provider.of<ContactListStore>(context, listen: false)
                        .addContact(ContactModel(
                            nome: this.nomeController.text,
                            email: this.emailController.text,
                            telefone: this.telefoneController.text));

                    Navigator.of(context).pop();
                  }
                },
                icon: Icon(
                  Icons.save,
                  color: Colors.redAccent,
                )),
          )
        ],
      ),
    );
  }
}
