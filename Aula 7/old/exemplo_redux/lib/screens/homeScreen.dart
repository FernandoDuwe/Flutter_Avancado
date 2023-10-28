import 'package:exemplo_redux/state/contactState.dart';
import 'package:exemplo_redux/viewModel/favoriteViewModel.dart';
import 'package:exemplo_redux/widgets/contactForm.dart';
import 'package:exemplo_redux/widgets/contactTile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StoreBuilder<ContactState>(
            builder: (context, vm) =>
                Text("Lista de contatos (${vm.state.contatosCounter})")),
        actions: [
          Icon(
            Icons.favorite,
            color: Colors.red,
          ),
          StoreConnector<ContactState, FavoriteViewModel>(
            converter: (store) => FavoriteViewModel(contador: store.state.contadorFavoritos),
            builder: (context, vm) => Text(vm.contador.toString()),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showModalBottomSheet(
            context: context, builder: (context) => ContactForm()),
        child: Icon(Icons.add_ic_call_outlined),
      ),
      body: StoreBuilder<ContactState>(
        builder: (context, vm) {
          if (vm.state.contatosCounter == 0)
            return Padding(
              padding: EdgeInsets.all(8),
              child: Text("Nenhum contato cadastrao"),
            );

          return ListView.builder(
              itemCount: vm.state.contatosCounter,
              itemBuilder: (context, index) =>
                  ContactTile(model: vm.state.getContact(index)));
        },
      ),
    );
  }
}
