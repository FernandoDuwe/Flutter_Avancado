import 'package:flutter/material.dart';
import 'package:lista_contatos_bloc/models/contact_model.dart';

typedef ContactTileOnTap = void Function(ContactModel contactModel);

class ContactTile extends StatelessWidget {
  final ContactModel contactModel;
  final ContactTileOnTap onTap;

  const ContactTile({ required this.contactModel, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        this.onTap(contactModel);
      },
      leading: Icon(Icons.person),
      title: Text(contactModel.nome),
      subtitle: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Telefone: ${contactModel.telefone}"),
          Text("E-mail: ${contactModel.email}")
        ],
      ),
      trailing: Icon(Icons.more_vert),
    );
  }
}
