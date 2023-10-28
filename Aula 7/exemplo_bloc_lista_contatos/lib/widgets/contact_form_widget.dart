import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lista_contatos_bloc/blocs/contact_list_bloc.dart';
import 'package:lista_contatos_bloc/models/contact_model.dart';
import 'package:lista_contatos_bloc/widgets/confirm_remove_contact_widget.dart';

class ContactFormWidget extends StatelessWidget {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController nomeController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController telefoneController = TextEditingController();

  final ContactModel? contactModel;

  ContactFormWidget({this.contactModel, super.key}) {
    if (contactModel != null) {
      nomeController.text = this.contactModel!.nome;
      emailController.text = this.contactModel!.email;
      telefoneController.text = this.contactModel!.telefone;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20), topLeft: Radius.circular(20))),
      child: Form(
        key: formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              controller: nomeController,
              decoration: InputDecoration(
                  labelText: "Nome", prefixIcon: Icon(Icons.person)),
              validator: (value) {
                if ((value ?? "").trim().isEmpty)
                  return "O campo é obrigatório";
              },
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                  labelText: "E-mail", prefixIcon: Icon(Icons.email)),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: telefoneController,
              decoration: InputDecoration(
                  labelText: "Telefone/Celular", prefixIcon: Icon(Icons.phone)),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        if (this.contactModel == null) {
                          BlocProvider.of<ContactListBloc>(context, listen: false)
                              .addContact(ContactModel.create(
                                  nome: nomeController.text,
                                  telefone: telefoneController.text,
                                  email: emailController.text));
                        } else {
                          contactModel!.nome = nomeController.text;
                          contactModel!.telefone = telefoneController.text;
                          contactModel!.email = emailController.text;

                          BlocProvider.of<ContactListBloc>(context, listen: false).updateContact(contactModel!);
                        }

                        Navigator.of(context).pop();
                      }
                    },
                    icon: Icon(Icons.save, color: Colors.green,)),
                IconButton(onPressed: contactModel == null ? null : () {
                  Navigator.of(context).pop();

                  showDialog(context: context, builder: (context) => ConfirmRemoveContactWidget(
                    contactModel: contactModel!,
                  ),);
                }, icon: Icon(Icons.remove, color: Colors.redAccent,))
              ],
            )
          ],
        ),
      ),
    );
  }
}
