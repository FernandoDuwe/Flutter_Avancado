import 'package:contactlist_redux/states/contactListState.dart';
import 'package:contactlist_redux/stores/contactListStore.dart';
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
      onLongPress: () => contactListStore.dispatch(
          ContactListAction(this.model, ContactListActionType.Remove)),
      trailing: InkWell(
        child: Icon(Icons.favorite,
            color: (this.model.favorito ? Colors.red : Colors.blueGrey)),
        onTap: () {
          contactListStore.dispatch(ContactListAction(
              this.model, ContactListActionType.setAsFavorite));
        },
      ),
    );
  }
}
