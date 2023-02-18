import 'package:flutter/material.dart';
import 'package:flutter_avancado/delegates/carRunPainterDelegate.dart';

class Exercicio9 extends StatefulWidget {
  const Exercicio9({Key? key}) : super(key: key);

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

    animationController.addListener(() {
      setState(() {});
    });

    animation = Tween<double>(begin: 0, end: 500).animate(animationController);

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
      body: Center(
        child: LayoutBuilder(
          builder: (p0, p1) {
            return Column(
              children: [
                Container(
                  height: 300,
                  width: p1.maxWidth,
                  child: CustomPaint(
                    painter: CarRunPainterDelegate(this.animation.value),
                  ),
                ),
                Container(
                  child: Text("${((this.animation.value / 500) * 100).round()} %",
                      style: TextStyle(color: Colors.white)),
                  height: 120,
                  width: 120,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.blue),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
