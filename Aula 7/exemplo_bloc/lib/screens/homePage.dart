import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:exemplo_bloc/blocs/contactBloc.dart';
import 'package:exemplo_bloc/models/contactModel.dart';
import 'package:exemplo_bloc/widgets/appBarTitle.dart';
import 'package:exemplo_bloc/widgets/contactForm.dart';
import 'package:exemplo_bloc/widgets/contactTile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBarTitle(),
        actions: [
          Icon(Icons.favorite, color: Colors.red),
          StreamBuilder<int>(
            initialData: 0,
            stream: BlocProvider.getBloc<ContactBloc>().favoriteCouter,
            builder: (context, snapshot) => Text("${snapshot.data}"),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showModalBottomSheet(
          context: context,
          builder: (context) => ContactForm(),
        ),
        child: Icon(Icons.add_ic_call_outlined),
      ),
      body: StreamBuilder<List<ContactModel>>(
        initialData: [],
        stream: BlocProvider.getBloc<ContactBloc>().contactStream,
        builder: (context, snapshot) {
          if (snapshot.hasError)
            return Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                snapshot.error.toString(),
                style: TextStyle(color: Colors.red),
              ),
            );

          if (!snapshot.hasData) return CircularProgressIndicator();

          if ((snapshot.hasData) && (snapshot.data!.length == 0))
            return Padding(
              padding: EdgeInsets.all(8),
              child: Text("Nenhum contato cadastrado"),
            );

          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) =>
                ContactTile(model: snapshot.data![index]),
          );
        },
      ),
    );
  }
}
