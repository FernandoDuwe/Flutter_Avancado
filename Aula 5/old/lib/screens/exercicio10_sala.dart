import 'package:flutter/material.dart';
import 'package:flutter_avancado_aula4/widgets/animatedButton.dart';

class Exercicio10_Sala extends StatefulWidget {
  const Exercicio10_Sala({Key? key}) : super(key: key);

  @override
  State<Exercicio10_Sala> createState() => _Exercicio10_SalaState();
}

class _Exercicio10_SalaState extends State<Exercicio10_Sala> with SingleTickerProviderStateMixin {
  late AnimationController controller;


  @override
  void initState() {
    super.initState();

    this.controller = AnimationController(vsync: this, duration: Duration(seconds: 1));
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: "Usuário"
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: "Senha",
              ),
              obscureText: true,
            ),
          ),
          AnimatedButton(this.controller)
        ],
      ),
    );
  }
}
