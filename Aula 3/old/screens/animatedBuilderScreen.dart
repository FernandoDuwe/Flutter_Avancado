import 'package:flutter/material.dart';
import 'dart:math' as math;

class AnimatedBuilderScreen extends StatefulWidget {
  const AnimatedBuilderScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedBuilderScreen> createState() => _AnimatedBuilderScreenState();
}

class _AnimatedBuilderScreenState extends State<AnimatedBuilderScreen> with SingleTickerProviderStateMixin {
  late AnimationController controller;


  @override
  void initState() {
    super.initState();

    this.controller = AnimationController(vsync: this, duration: Duration(seconds: 3));

    this.controller.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedBuilder"),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: this.controller,
          child: Image(
              image: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQjWTOkhwMsSK5GOZ3OjgAudb2BXbcPXQNXg&usqp=CAU")),
            builder: (context, child) {
              return Transform.rotate(angle: this.controller.value * 2.0 * math.pi,  child: child,);
            },
        ),
      ),
    );
  }
}
