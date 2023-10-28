import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lista_contatos_bloc/blocs/contact_list_bloc.dart';
import 'package:lista_contatos_bloc/widgets/contact_form_widget.dart';
import 'package:lista_contatos_bloc/widgets/contact_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de contatos"),
      ),
      body: StreamBuilder(
        initialData: [],
        stream: BlocProvider
            .of<ContactListBloc>(context)
            .streamContactList,
        builder: (context, snapshot) {
          if (snapshot.hasError)
            return Center(
              child: Text(snapshot.error.toString()),
            );

          if (!snapshot.hasData)
            return Center(
              child: CircularProgressIndicator(),
            );

          if (snapshot.data!.isEmpty)
            return Center(
              child: Text("Nenhum contato foi cadastrado"),
            );

          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) =>
                ContactTile(
                    onTap: (contactModel) {
                      showModalBottomSheet(context: context, builder: (context) => ContactFormWidget(contactModel: contactModel),);
                    },
                    contactModel: snapshot.data![index]));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(context: context, builder: (context) => ContactFormWidget(),);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
