import 'package:exercicio17/store/userStore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import '../states/userState.dart';

class FormUser extends StatelessWidget {
  TextEditingController userController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  FormUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(50),
        height: 250,
        child: StoreConnector<UserState, UserState>(
          converter: (store) => store.state,
          builder: (context, vm) {
            this.userController.text = vm.userName;

            return Form(
              key: this.formKey,
              child: Column(
                children: [
                  TextFormField(
                    validator: (value) {
                      if (value!.trim() == "")
                        return "O campo usuário é obrigatório";
                    },
                    controller: this.userController,
                    decoration: InputDecoration(
                      labelText: "Usuário",
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  IconButton(
                      onPressed: () {
                        if (this.formKey.currentState!.validate()) {
                          userStore.dispatch(UserAction(
                              this.userController.text,
                              UserStateActions.changeName));

                          Navigator.pop(context);
                        }
                      },
                      icon: Icon(
                        Icons.save,
                        color: Colors.greenAccent,
                      ))
                ],
              ),
            );
          },
        ));
  }
}
