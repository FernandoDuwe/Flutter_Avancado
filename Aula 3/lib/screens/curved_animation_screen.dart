import "package:flutter/material.dart";

class CurvedAnimationScreen extends StatefulWidget {
  const CurvedAnimationScreen({super.key});

  @override
  State<CurvedAnimationScreen> createState() => _CurvedAnimationScreenState();
}

class _CurvedAnimationScreenState extends State<CurvedAnimationScreen>
    with SingleTickerProviderStateMixin {

  late AnimationController animationController;
  late Animation<double> animation;


  @override
  void initState() {
    super.initState();

   animationController = AnimationController(vsync: this, duration: Duration(seconds: 5));

    animation = Tween<double>(begin: 100, end: 300).animate(CurvedAnimation(parent: animationController, curve: Curves.decelerate));

    animationController.repeat();
  }


  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CurvedAnimation"),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: animation,
          builder: (context, child) {
            return Container(
              color: Colors.blueAccent,
              height: animation.value,
              width: animation.value,
            );
          },
        ),
      ),
    );
  }
}
