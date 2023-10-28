import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:proway_twitter/bloc/postBloc.dart';
import 'package:proway_twitter/models/postModel.dart';
import 'package:proway_twitter/widgets/postTile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: StreamBuilder<List<PostModel>>(
        stream: BlocProvider.getBloc<PostBloc>().posts,
        builder: (context, snapshot) {
          if (snapshot.hasError)
            return Center(
              child: Text(
                snapshot.error.toString(),
                style: TextStyle(color: Colors.red),
              ),
            );

          if (!snapshot.hasData)
            return Center(
              child: CircularProgressIndicator(),
            );

          if ((snapshot.hasData) && (snapshot.data!.length == 0))
            return Center(child: Text("Nenhum registro encontrado"));

          return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) =>
                  PostTile(model: snapshot.data![index]));
        },
      ),
    );
  }
}
