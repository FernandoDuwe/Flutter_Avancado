import 'package:flutter/material.dart';

class AnimatedSwitcherTest extends StatefulWidget {
  const AnimatedSwitcherTest({Key? key}) : super(key: key);

  @override
  State<AnimatedSwitcherTest> createState() => _AnimatedSwitcherTestState();
}

class _AnimatedSwitcherTestState extends State<AnimatedSwitcherTest> {
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedSwitcher"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            this.isOn = !this.isOn;
          });
        },
        child: Icon(Icons.change_circle_outlined),
      ),
      body: Center(
        child: AnimatedSwitcher(
          key: ValueKey<bool>(this.isOn),
          duration: Duration(milliseconds: 300),
          transitionBuilder: (child, animation) =>
              ScaleTransition(scale: animation, child: child),
          child: (this.isOn
              ? Container(
                  height: 100,
                  width: 100,
                  color: Colors.green,
                )
              : Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                )),
        ),
      ),
    );
  }
}
