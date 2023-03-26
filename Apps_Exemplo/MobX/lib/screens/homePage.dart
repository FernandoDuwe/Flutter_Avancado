import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_example/stores/contactListStore.dart';
import 'package:mobx_example/widgets/contactForm.dart';
import 'package:mobx_example/widgets/contactListTile.dart';
import 'package:provider/provider.dart';

import '../widgets/homeAppBarTitle.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ContactListStore vrStore = Provider.of<ContactListStore>(context);

    return Scaffold(
        appBar: AppBar(
          title: HomeAppBarTitle(),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => showModalBottomSheet(
            context: context,
            builder: (context) {
              return ContactForm();
            },
          ),
          child: Icon(Icons.add),
        ),
        body: Observer(
          builder: (context) {
            if (vrStore.contactCount == 0)
              return Padding(
                padding: EdgeInsets.all(8),
                child: Text("Nenhum registro encontrado"),
              );

            return ListView.builder(
                itemCount: vrStore.contactCount,
                itemBuilder: (context, index) =>
                    ContactListTile(model: vrStore.contactList[index]));
          },
        ));
  }
}
