import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_contatos/stores/contactListStore.dart';
import 'package:mobx_contatos/widgets/contactForm.dart';
import 'package:mobx_contatos/widgets/contactTile.dart';
import 'package:provider/provider.dart';

class HomeContactScreen extends StatelessWidget {
  const HomeContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ContactListStore vrStore = Provider.of<ContactListStore>(context);

    return Scaffold(
      appBar: AppBar(
        title: Observer(
          builder: (context) => Text("Lista de contatos (${vrStore.counter})"),
        ),
        actions: [
          Observer(builder: (context) => Text(vrStore.favoriteCounter.toString()))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showModalBottomSheet(context: context, builder: (context) => ContactForm(),),
        child: Icon(Icons.add),
      ),
      body: Observer(
        builder: (context) {
          if (vrStore.counter == 0)
            return Padding(
                padding: EdgeInsets.all(20),
                child: Text("Nenhum registro encontrado"));

          return ListView.builder(
            itemCount: vrStore.counter,
            itemBuilder: (context, index) {
              return ContactTile(model: vrStore.list[index]);
            },
          );
        },
      ),
    );
  }
}
