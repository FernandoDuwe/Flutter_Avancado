import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_example/stores/contactListStore.dart';
import 'package:provider/provider.dart';

class HomeAppBarTitle extends StatelessWidget {
  const HomeAppBarTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        int vrCounter = Provider.of<ContactListStore>(context).contactCount;
        int vrFavoriteCounter =
            Provider.of<ContactListStore>(context).favoriteCount;

        return Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(child: Text("Lista de contatos (${vrCounter})")),
            Icon(Icons.favorite, color: Colors.red),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Text(vrFavoriteCounter.toString()),
            ),
          ],
        );
      },
    );
  }
}
