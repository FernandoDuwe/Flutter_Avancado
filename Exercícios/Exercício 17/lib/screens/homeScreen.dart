import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:exercicio17/blocs/postBloc.dart';
import 'package:exercicio17/models/postModel.dart';
import 'package:exercicio17/widgets/postTile.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Proway"),
      ),
      body: StreamBuilder<List<PostModel>>(
        initialData: [],
        stream: BlocProvider.getBloc<PostBloc>().posts,
        builder: (context, snapshot) {
          if (snapshot.hasError)
            return Text(snapshot.error.toString(),
                style: TextStyle(color: Colors.red));

          if (!snapshot.hasData) return Text("Nenhum registro encontrado");

          return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) =>
                  PostTile(post: snapshot.data![index]));
        },
      ),
    );
  }
}
