import "package:flutter/material.dart";

class AnimatedSwitcherScreen extends StatefulWidget {
  const AnimatedSwitcherScreen({super.key});

  @override
  State<AnimatedSwitcherScreen> createState() => _AnimatedSwitcherScreenState();
}

class _AnimatedSwitcherScreenState extends State<AnimatedSwitcherScreen> {
  bool isOn = true;

  Widget _getLight() {
    if (isOn)
      return Icon(
        Icons.light_mode,
        color: Colors.yellow,
        size: 128,
      );

    return Icon(
      Icons.dark_mode_outlined,
      color: Colors.blueGrey,
      size: 128,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedSwitcher"),
        actions: [
          IconButton(onPressed: () {
            setState(() {
              this.isOn = !this.isOn;
            });
          }, icon: Icon(Icons.switch_left))
        ],
      ),
      body: Center(
        child: AnimatedSwitcher(
          transitionBuilder: (child, animation) {
            return SizeTransition(
              sizeFactor: animation,
              child: child,
              axis: Axis.horizontal,
              axisAlignment: -1,
            );
          },
          duration: Duration(seconds: 3),
          child: _getLight(),
        ),
      ),
    );
  }
}
