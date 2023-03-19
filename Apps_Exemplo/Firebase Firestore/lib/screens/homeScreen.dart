import 'package:firebase_example/models/postModel.dart';
import 'package:firebase_example/repositories/postRespository.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PostRepository vrRepository = PostRepository();

    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          vrRepository.addPost(PostModel(title: "Teste de upload", text: "Testar o upload", user: "fernando.duwe"));
        },
        child: Icon(Icons.send),
      ),
      body: FutureBuilder<List<PostModel>>(
        future: vrRepository.getPosts(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(Icons.person, color: Colors.blue,),
                    title: Text(snapshot.data![index].title + " (@${snapshot.data![index].user})"),
                    subtitle: Text(snapshot.data![index].text),
                  );
                });
          }

          return CircularProgressIndicator();
        },
      ),
    );
  }
}
