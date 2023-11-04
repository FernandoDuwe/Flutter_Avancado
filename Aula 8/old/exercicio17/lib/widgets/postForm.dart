import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:exercicio17/blocs/postsBloc.dart';
import 'package:exercicio17/models/postModel.dart';
import 'package:flutter/material.dart';

class PostForm extends StatelessWidget {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController titleController = TextEditingController();
  TextEditingController messageController = TextEditingController();

  PostForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Form(
              key: this.formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("No que você está pensando?"),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    controller: this.titleController,
                    decoration: InputDecoration(labelText: "Título"),
                    validator: (value) {
                      if (value == "")
                        return "O título é obrigatório";
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: this.messageController,
                    validator: (value) {
                      if (value == "")
                        return "A mensagem é obrigatória";
                    },
                    decoration: InputDecoration(labelText: "Mensagem"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 20),
                    child: IconButton(
                      onPressed: () {
                        PostModel vrModel = PostModel();
                        vrModel.title = this.titleController.text;
                        vrModel.text = this.messageController.text;
                        vrModel.username = "fernando.duwe";

                        BlocProvider.getBloc<PostsBloc>().addPostSink.add(vrModel);

                        Navigator.of(context).pop();
                      },
                      icon: Icon(Icons.send, color: Colors.greenAccent,),
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
