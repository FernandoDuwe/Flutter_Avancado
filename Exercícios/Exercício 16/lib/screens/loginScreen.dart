import 'package:admin_test/models/userModel.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController passWordController = TextEditingController();

  String _errorMessage = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              (this._errorMessage == "" ? Container() : Container(
                child: Text(this._errorMessage),
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.redAccent
                ),
              )),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  key: ValueKey<String>("login_input_user"),
                  controller: this.userNameController,
                  decoration: InputDecoration(
                    labelText: "Usuário",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  key: ValueKey<String>("login_input_password"),
                  controller: this.passWordController,
                  decoration: InputDecoration(
                    labelText: "Senha",
                  ),
                  obscureText: true,
                ),
              ),
              ElevatedButton(
                  key: ValueKey<String>("login_button_login"),
                  onPressed: () {
                    if (UserModel().login(this.userNameController.text,
                        this.passWordController.text)) {
                      Navigator.of(context).pushReplacementNamed("/home");
                    } else {
                      setState(() {
                        this._errorMessage = "Usuário/Senha Inválido";
                      });
                    }
                  },
                  child: Text("Login"))
            ],
          ),
        ),
      ),
    );
  }
}
