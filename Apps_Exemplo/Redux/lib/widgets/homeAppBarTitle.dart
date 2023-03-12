import 'package:contactlist_redux/states/contactListState.dart';
import 'package:contactlist_redux/stores/contactListStore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class HomeAppBarTitle extends StatelessWidget {
  const HomeAppBarTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<ContactListState, ContactListState>(
      converter: (store) {
        return store.state;
      },
      builder: (context, vm) {
        return Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(child: Text("Lista de contatos")),
            Icon(Icons.favorite, color: Colors.red),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Text(vm.favoriteCounter.toString()),
            )
          ],
        );
      },
    );
  }
}
