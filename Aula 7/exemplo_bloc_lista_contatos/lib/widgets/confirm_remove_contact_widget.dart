import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lista_contatos_bloc/blocs/contact_list_bloc.dart';
import 'package:lista_contatos_bloc/models/contact_model.dart';

class ConfirmRemoveContactWidget extends StatelessWidget {
  final ContactModel contactModel;

  const ConfirmRemoveContactWidget({ required this.contactModel, super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Confirmação"),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Deseja realmente excluir?"),
          SizedBox(height: 10,),
          Text(contactModel.nome, style: TextStyle(fontWeight: FontWeight.bold),)
        ],
      ),
      actions: [
        TextButton(onPressed: () {
          Navigator.of(context).pop();
        }, child: Text("Não")),
        TextButton(onPressed: () {
          BlocProvider.of<ContactListBloc>(context, listen: false).removeContact(contactModel);

          Navigator.of(context).pop();
        }, child: Text("Sim"))
      ],
    );
  }
}
