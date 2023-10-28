import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:exemplo_bloc/blocs/contactBloc.dart';
import 'package:exemplo_bloc/models/contactModel.dart';
import 'package:flutter/material.dart';

class ContactTile extends StatelessWidget {
  final ContactModel model;

  const ContactTile({required this.model, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.person),
      title: Text(this.model.nome),
      subtitle: Text(this.model.email),
      onLongPress: () => BlocProvider.getBloc<ContactBloc>().removeContact.add(this.model),
      trailing: IconButton(
        onPressed: () => BlocProvider.getBloc<ContactBloc>().favoriteContact.add(this.model),
        icon: Icon(
          Icons.favorite,
          color: (this.model.favorito ? Colors.red : Colors.grey),
        ),
      ),
    );
  }
}
