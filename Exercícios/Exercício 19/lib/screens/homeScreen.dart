import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:exercicio17/blocs/postBloc.dart';
import 'package:exercicio17/models/postModel.dart';
import 'package:exercicio17/widgets/formPost.dart';
import 'package:exercicio17/widgets/postTile.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.question_answer,
          color: Colors.blue,
        ),
        title: Text("Proway"),
        actions: [
          IconButton(
              onPressed: () => Navigator.of(context).pushNamed("/search"),
              icon: Icon(Icons.search))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.question_answer),
        onPressed: () {
          showModalBottomSheet(
              context: context, builder: (context) => FormPost());
        },
      ),
      body: StreamBuilder<List<PostModel>>(
        initialData: [],
        stream: BlocProvider.getBloc<PostBloc>().posts,
        builder: (context, snapshot) {
          if (snapshot.hasError)
            return Text(snapshot.error.toString(),
                style: TextStyle(color: Colors.red));

          if (!snapshot.hasData) return CircularProgressIndicator();

          if ((snapshot.hasData) && (snapshot.data!.length == 0))
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text("Nenhum registro encontrado."),
                  TextButton(
                      onPressed: () =>
                          BlocProvider.getBloc<PostBloc>().search.add(""),
                      child: Text("Limpar pesquisa"))
                ],
              ),
            );

          return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) =>
                  PostTile(post: snapshot.data![index]));
        },
      ),
    );
  }
}
