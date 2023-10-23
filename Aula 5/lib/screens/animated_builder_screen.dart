import "dart:math";

import "package:flutter/material.dart";

class AnimatedBuilderScreen extends StatefulWidget {
  const AnimatedBuilderScreen({super.key});

  @override
  State<AnimatedBuilderScreen> createState() => _AnimatedBuilderScreenState();
}

class _AnimatedBuilderScreenState extends State<AnimatedBuilderScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();

    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 3));

    animation =
        new Tween<double>(begin: 0, end: 1).animate(animationController);

    animationController.repeat();
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
        title: Text("AnimatedBuilder"),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: animation,
          child: Image.network(
              "https://m.media-amazon.com/images/I/71SCPLfVFGL._AC_UF894,1000_QL80_.jpg"),
          builder: (context, child) {
            return Transform.rotate(angle: animation.value * 2 * pi, child: child,);
          },
        ),
      ),
    );
  }
}
