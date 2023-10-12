import "package:flutter/material.dart";
import "package:flutter_avancado_aula1/widgets/animated_car.dart";

class AnimatedWidgetExample extends StatefulWidget {
  const AnimatedWidgetExample({super.key});

  @override
  State<AnimatedWidgetExample> createState() => _AnimatedWidgetExampleState();
}

class _AnimatedWidgetExampleState extends State<AnimatedWidgetExample>
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
        title: Text("Animated Widget Example"),
      ),
      body: AnimatedCar(animation),
    );
  }
}
