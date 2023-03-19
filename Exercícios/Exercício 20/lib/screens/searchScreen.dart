import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:exercicio17/blocs/postBloc.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();

  SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          BlocProvider.getBloc<PostBloc>()
              .search
              .add(this.searchController.text);

          Navigator.pop(context);
        },
        child: Icon(Icons.search),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.search,
              size: 128,
            ),
            SizedBox(
              height: 10,
            ),
            Text("Pesquisar por usuários, títulos ou mensagens"),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: TextField(
                  controller: this.searchController,
                  decoration: InputDecoration(labelText: "Pesquisar")),
            )
          ],
        ),
      ),
    );
  }
}
