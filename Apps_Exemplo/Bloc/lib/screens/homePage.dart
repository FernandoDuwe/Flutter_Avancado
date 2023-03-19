import 'package:bloc_exemplo/bloc/ContactBloc.dart';
import 'package:bloc_exemplo/models/contactModel.dart';
import 'package:bloc_exemplo/widgets/contactListTile.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';

import '../widgets/homeAppBarTitle.dart';

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
        body: StreamBuilder<List<ContactModel>>(
          stream: BlocProvider.getBloc<ContactBloc>().contacts,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              if (snapshot.data!.length == 0)
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Nenhum contato cadastrado"),
                );

              return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    return ContactListTile(model: snapshot.data![index]);
                  });
            }

            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Nenhum contato cadastrado"),
            );
          },
        ));
  }
}
