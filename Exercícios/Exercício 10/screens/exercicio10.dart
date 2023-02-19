import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_avancado/widgets/animatedButton.dart';

class Exercicio10 extends StatefulWidget {
  const Exercicio10({Key? key}) : super(key: key);

  @override
  State<Exercicio10> createState() => _Exercicio10State();
}

class _Exercicio10State extends State<Exercicio10>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();

    this.controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
  }

  @override
  void dispose() {
    this.controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercício 10"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50, bottom: 50),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Usuário"
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50, bottom: 100),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    labelText: "Senha",
                ),
              ),
            ),
            AnimatedButton(this.controller),
          ],
        ),
      ),
    );
  }
}
