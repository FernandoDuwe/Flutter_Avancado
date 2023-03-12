import 'package:flutter/material.dart';

class DecoratedBoxTransitionScreen extends StatefulWidget {
  const DecoratedBoxTransitionScreen({Key? key}) : super(key: key);

  @override
  State<DecoratedBoxTransitionScreen> createState() =>
      _DecoratedBoxTransitionScreenState();
}

class _DecoratedBoxTransitionScreenState
    extends State<DecoratedBoxTransitionScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller;

  final DecorationTween animation = DecorationTween(
      begin: BoxDecoration(
        color: Colors.black38,
        borderRadius: BorderRadius.zero
      ),
      end: BoxDecoration(borderRadius: BorderRadius.circular(200), color: Colors.yellowAccent));

  @override
  void initState() {
    super.initState();

    this.controller =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("DecoratedBoxTransition"),
          actions: [
            IconButton(
                onPressed: () {
                  this.controller.repeat();
                },
                icon: Icon(
                  Icons.sunny,
                  color: Colors.yellowAccent,
                ))
          ],
        ),
        body: Center(
          child: DecoratedBoxTransition(
            decoration: this.animation.animate(this.controller),
            child: Container(
              height: 300,
              width: 300,
            ),
          ),
        ));
  }
}
