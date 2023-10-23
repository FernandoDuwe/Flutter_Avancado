import "package:flutter/material.dart";
import "package:flutter_avancado_aula1/screens/home_test_screen.dart";

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String? messageErro;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: (messageErro != null
          ? Container(
              alignment: Alignment.center,
              color: Colors.redAccent,
              height: 40,
              child: Text(messageErro!, style: TextStyle(color: Colors.white)),
            )
          : null),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              key: ValueKey<String>("user"),
              controller: userController,
              decoration: InputDecoration(labelText: "Usuário"),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              key: ValueKey<String>("password"),
              controller: passwordController,
              decoration: InputDecoration(labelText: "Senha"),
              obscureText: true,
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  if ((userController.text == "admin") &&
                      (passwordController.text == "admin")) {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => HomeTestScreen(),
                    ));

                    return;
                  } else {
                    setState(() {
                      messageErro = "Usuário/senha inválida";
                    });
                  }
                },
                child: Text("Login"))
          ],
        ),
      )),
    );
  }
}
