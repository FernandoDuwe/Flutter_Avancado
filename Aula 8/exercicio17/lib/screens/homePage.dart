import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:exercicio17/blocs/postsBloc.dart';
import 'package:exercicio17/models/postModel.dart';
import 'package:exercicio17/repositories/firestorePostRepository.dart';
import 'package:exercicio17/widgets/postForm.dart';
import 'package:exercicio17/widgets/postTile.dart';
import 'package:flutter/material.dart';

import '../widgets/chatPostTile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FirestorePostRepository vrRepository = FirestorePostRepository();

    vrRepository.get().then((value) {
      print(value);

      print(value.length);
    });

    return Scaffold(
        appBar: AppBar(
          title: Text("ProwayTwitter™"),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add_comment_outlined),
          
          onPressed: () => showModalBottomSheet(context: context, builder: (context) => PostForm(),),
        ),
        body: StreamBuilder<List<PostModel>>(
          stream: BlocProvider.getBloc<PostsBloc>().stream,
          initialData: [],
          builder: (context, snapshot) {
            if (snapshot.hasError)
              return Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  snapshot.error.toString(),
                  style: TextStyle(color: Colors.red),
                ),
              );

            if (!snapshot.hasData)
              return Padding(
                padding: EdgeInsets.all(20),
                child: Text("Nenhuma informação recebida"),
              );

            if (snapshot.data!.length == 0)
              return Padding(
                padding: EdgeInsets.all(20),
                child: Text("Nenhum registro encontrado"),
              );

            return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) =>
                    PostTile(model: snapshot.data![index]));
          },
        ));
  }
}
