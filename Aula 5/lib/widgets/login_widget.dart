import "package:flutter/material.dart";

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  GlobalKey<FormState> formState = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formState,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextFormField(
            key: ValueKey<String>("edt_user"),
            decoration: InputDecoration(
              labelText: "Usuário"
            ),
            validator: (value) {
              if ((value ?? "").trim().isEmpty)
                return "O campo é obrigatório";
            },
          ),
          TextFormField(
            key: ValueKey<String>("edt_password"),
            decoration: InputDecoration(
              labelText: "Senha"
            ),
            validator: (value) {
              if ((value ?? "").trim().isEmpty)
                return "O campo é obrigatório";
            },
          ),
          ElevatedButton(
              key: ValueKey<String>("btn_login"),
              onPressed: () {
            if (formState.currentState!.validate()) {
              print("Posso efetuar o login");
            }
          }, child: Text("Login"))
        ],
      ),
    );
  }
}
