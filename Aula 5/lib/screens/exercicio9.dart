import "package:flutter/material.dart";
import "package:flutter_avancado_aula1/delegates/ex9_car_delegate.dart";

class Exercicio9 extends StatefulWidget {
  const Exercicio9({super.key});

  @override
  State<Exercicio9> createState() => _Exercicio9State();
}

class _Exercicio9State extends State<Exercicio9>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();

    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 3));

    animation =
        new Tween<double>(begin: 0, end: 500).animate(animationController);

    animationController.addListener(() {
      setState(() {});
    });

    animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) animationController.reverse();

      if (status == AnimationStatus.dismissed) animationController.forward();
    });

    animationController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercício 9"),
      ),
      body: CustomPaint(
          painter: Ex9CarDelegate(currentPosition: animation.value)),
    );
  }
}
