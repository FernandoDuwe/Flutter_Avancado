import 'package:flutter/material.dart';

class AnimatedLoginButton extends StatefulWidget {
  const AnimatedLoginButton({super.key});

  @override
  State<AnimatedLoginButton> createState() => _AnimatedLoginButtonState();
}

class _AnimatedLoginButtonState extends State<AnimatedLoginButton>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();

    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));

    animation = Tween<double>(begin: 300, end: 70).animate(CurvedAnimation(
        parent: animationController, curve: Curves.easeInOutBack));
  }

  @override
  void dispose() {
    super.dispose();
  }

  Widget _getChild() {
    if (animation.value < 200)
      return CircularProgressIndicator(
        color: Colors.white60,
      );

    return Text("Login");
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(animation: animation, builder: (context, child) {
      return ConstrainedBox(
        constraints: BoxConstraints.tight(Size(animation.value, 50)),
        child: ElevatedButton(onPressed: () {
          animationController.forward();
        }, child: _getChild()),
      );
    },);
  }
}
