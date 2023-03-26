import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_example/stores/contactListStore.dart';
import 'package:mobx_example/stores/contactModelStore.dart';
import 'package:provider/provider.dart';

import '../models/contactModel.dart';

class ContactListTile extends StatelessWidget {
  final ContactModelStore model;

  const ContactListTile({required this.model, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        return ListTile(
          leading: Icon(
            Icons.person,
            color: (this.model.favorite ? Colors.yellow : Colors.blueGrey),
          ),
          title: Text(this.model.model.nome),
          subtitle: Text(this.model.model.email),
          onLongPress: () => Provider.of<ContactListStore>(context, listen: false)
              .removeContact(this.model),
          trailing: InkWell(
            child: Icon(Icons.favorite,
                color: (this.model.favorite ? Colors.red : Colors.blueGrey)),
            onTap: () {
              this.model.setFavorite(!this.model.model.favorito);
            },
          ),
        );
      },
    );
  }
}
