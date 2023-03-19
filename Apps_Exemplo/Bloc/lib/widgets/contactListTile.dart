import 'package:bloc_exemplo/bloc/ContactBloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';

import '../models/contactModel.dart';

class ContactListTile extends StatelessWidget {
  final ContactModel model;

  const ContactListTile({required this.model, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        Icons.person,
        color: (this.model.favorito ? Colors.yellow : Colors.blueGrey),
      ),
      title: Text(this.model.nome),
      subtitle: Text(this.model.email),
      onLongPress: () {
         BlocProvider.getBloc<ContactBloc>().outController.add(this.model);
      },
      trailing: InkWell(
        child: Icon(Icons.favorite,
            color: (this.model.favorito ? Colors.red : Colors.blueGrey)),
        onTap: () {
          this.model.favorito = !this.model.favorito;

          BlocProvider.getBloc<ContactBloc>().addContact.add(this.model);
        },
      ),
    );
  }
}
