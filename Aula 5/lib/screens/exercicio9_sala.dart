import 'package:flutter/material.dart';
import 'package:flutter_avancado_aula4/widgets/animatedCar.dart';
import 'package:flutter_avancado_aula4/widgets/carAnimatedPainter.dart';

class Exercicio9Sala extends StatefulWidget {
  const Exercicio9Sala({Key? key}) : super(key: key);

  @override
  State<Exercicio9Sala> createState() => _Exercicio9SalaState();
}

class _Exercicio9SalaState extends State<Exercicio9Sala>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();

    this.controller = AnimationController(vsync: this, duration: Duration(seconds: 3));

    this.animation = Tween<double>(begin: 0, end: 200).animate(this.controller);
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
        title: Text("Exercício 9"),
        actions: [
          IconButton(onPressed: () => this.controller.reverse(), icon: Icon(Icons.arrow_back)),
          IconButton(onPressed: () => this.controller.forward(), icon: Icon(Icons.arrow_forward))
        ],
      ),
      body: Container(
        height: 500,
        width: 500,
        child: AnimatedCar(this.animation)
      ),
    );
  }
}
