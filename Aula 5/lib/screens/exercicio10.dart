import "package:flutter/material.dart";
import "package:flutter_avancado_aula1/widgets/animated_login_button.dart";

class Exercicio10 extends StatelessWidget {
  const Exercicio10({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          elevation: 30,
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  decoration: InputDecoration(
                    labelText: "Usuário"
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  decoration: InputDecoration(
                      labelText: "Senha"
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 20,),
                AnimatedLoginButton()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
