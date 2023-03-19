import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:exercicio17/blocs/postBloc.dart';
import 'package:exercicio17/models/postModel.dart';
import 'package:exercicio17/states/userState.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class FormPost extends StatelessWidget {
  TextEditingController titleController = TextEditingController();
  TextEditingController textController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  FormPost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(50),
        height: 360,
        child: StoreConnector<UserState, UserState>(
          converter: (store) => store.state,
          builder: (context, vm) {
            return Form(
              key: this.formKey,
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text("No que você está pensando?",
                            style: TextStyle(color: Colors.white, fontSize: 18)),
                      ),
                      Text("@${vm.userName}",
                          style: TextStyle(
                            color: Colors.grey,
                          )),
                    ],
                  ),
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
                          BlocProvider.getBloc<PostBloc>().addPost.add(
                              PostModel(
                                  title: this.titleController.text,
                                  text: this.textController.text,
                                  user: vm.userName));

                          Navigator.pop(context);
                        }
                      },
                      icon: Icon(
                        Icons.send,
                        color: Colors.greenAccent,
                      ))
                ],
              ),
            );
          },
        ));
  }
}
