import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:exercicio17/blocs/postBloc.dart';
import 'package:exercicio17/models/postModel.dart';
import 'package:flutter/material.dart';

class FormPost extends StatelessWidget {
  TextEditingController titleController = TextEditingController();
  TextEditingController textController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  FormPost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(50),
        child: Form(
          key: this.formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("No que você está pensando?",
                  style: TextStyle(color: Colors.white, fontSize: 18)),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                validator: (value) {
                  if (value!.trim() == "")
                    return "O campo título é obrigatório";
                },
                controller: this.titleController,
                decoration: InputDecoration(
                  labelText: "Título",
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                validator: (value) {
                  if (value!.trim() == "")
                    return "O campo mensagem é obrigatório";
                },
                controller: this.textController,
                decoration: InputDecoration(
                  labelText: "Mensagem",
                ),
              ),
              SizedBox(
                height: 30,
              ),
              IconButton(
                  onPressed: () {
                    if (this.formKey.currentState!.validate()) {
                      BlocProvider.getBloc<PostBloc>().addPost.add(PostModel(
                          title: this.titleController.text,
                          text: this.textController.text,
                          user: "fernando_duwe"));

                      Navigator.pop(context);
                    }
                  },
                  icon: Icon(
                    Icons.send,
                    color: Colors.greenAccent,
                  ))
            ],
          ),
        ));
  }
}
