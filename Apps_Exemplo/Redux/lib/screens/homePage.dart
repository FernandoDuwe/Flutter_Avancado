import 'package:contactlist_redux/models/contactModel.dart';
import 'package:contactlist_redux/widgets/contactListTile.dart';
import 'package:contactlist_redux/widgets/homeAppBarTitle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../states/contactListState.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: HomeAppBarTitle(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context).pushNamed("/add"),
        child: Icon(Icons.add),
      ),
      body: StoreBuilder<ContactListState>(
        builder: (BuildContext context, Store<ContactListState> store) {
          return ListView.builder(
              itemCount: store.state.list.length,
              itemBuilder: (context, index) {
                return ContactListTile(model: store.state.list[index]);
              });
        }
      ),
    );
  }
}
