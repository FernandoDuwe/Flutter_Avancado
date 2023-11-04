import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_contatos/models/contactModel.dart';
import 'package:mobx_contatos/stores/contactListStore.dart';
import 'package:mobx_contatos/stores/contactStore.dart';
import 'package:provider/provider.dart';

class ContactTile extends StatelessWidget {
  final ContactStore model;

  const ContactTile({required this.model, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(this.model.nome),
      onLongPress: () => Provider.of<ContactListStore>(context, listen: false)
          .removeContact(this.model),
      trailing: Observer(
        builder: (context) {
          return IconButton(
            onPressed: () {
              this.model.setFavorite(!this.model.favorito);
            },
            icon: Icon(
              Icons.favorite,
              color: (this.model.favorito ? Colors.red : Colors.grey),
            ),
          );
        },
      ),
    );
  }
}
