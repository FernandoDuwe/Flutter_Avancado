import 'package:exemplo_redux/models/contactModel.dart';
import 'package:exemplo_redux/state/contactState.dart';
import 'package:exemplo_redux/store/contactStore.dart';
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
      onLongPress: () => contactStore.dispatch(ContactAction(
          contact: this.model, type: ContactActionType.removeContact)),
      trailing: IconButton(
        onPressed: () {
          contactStore.dispatch(ContactAction(
              contact: model, type: ContactActionType.setAsFavorite));
        },
        icon: Icon(
          Icons.favorite,
          color: (this.model.favorito ? Colors.red : Colors.grey),
        ),
      ),
    );
  }
}
