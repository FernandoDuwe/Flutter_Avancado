import "package:flutter/material.dart";

class DecoratedBoxScreen extends StatefulWidget {
  const DecoratedBoxScreen({super.key});

  @override
  State<DecoratedBoxScreen> createState() => _DecoratedBoxScreenState();
}

class _DecoratedBoxScreenState extends State<DecoratedBoxScreen> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  final DecorationTween animation = DecorationTween(
      begin: BoxDecoration(
          borderRadius: BorderRadius.circular(0),
          gradient: LinearGradient(
              colors: [
                Colors.green,
                Colors.yellow,
                Colors.blue
              ]
          )
      ),
      end: BoxDecoration(
          borderRadius: BorderRadius.circular(150),
        gradient: LinearGradient(
          colors: [
            Colors.red,
            Colors.redAccent
          ]
        )
      ));

  @override
  void initState() {
    super.initState();

    animationController = AnimationController(vsync: this, duration: Duration(seconds: 5));
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DecoratedBox"),
        actions: [
          IconButton(onPressed: () {
            animationController.repeat();
          }, icon: Icon(Icons.play_arrow))
        ],
      ),
      body: Center(
        child: DecoratedBoxTransition(
          decoration: animation.animate(CurvedAnimation(parent: animationController, curve: Curves.bounceInOut)),
          child: Container(
            height: 300,
            width: 300,
          ),
        ),
      ),
    );
  }
}
