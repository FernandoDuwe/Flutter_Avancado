import "dart:async";

import "package:flutter/material.dart";

class AnimatedContainerScreen extends StatefulWidget {
  const AnimatedContainerScreen({super.key});

  @override
  State<AnimatedContainerScreen> createState() =>
      _AnimatedContainerScreenState();
}

class _AnimatedContainerScreenState extends State<AnimatedContainerScreen> {
  Color currentColor = Colors.red;
  double currentSize = 200;

  @override
  void initState() {
    super.initState();

    Timer.periodic(Duration(seconds: 3), (timer) {
      setState(() {
        if (currentColor == Colors.red) {
          currentSize = 400;

          currentColor = Colors.green;

          return;
        }


        if (currentColor == Colors.green) {
          currentSize = 300;

          currentColor = Colors.yellow;

          return;
        }

        if (currentColor == Colors.yellow) {
          currentSize = 200;

          currentColor = Colors.red;

          return;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedContainer"),
      ),
      body: Center(
        child: AnimatedContainer(
          height: currentSize,
          width: currentSize,
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: currentColor),
          duration: Duration(seconds: 1),
        ),
      ),
    );
  }
}
