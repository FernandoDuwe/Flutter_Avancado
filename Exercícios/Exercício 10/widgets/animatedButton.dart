import 'package:flutter/material.dart';

class AnimatedButton extends StatelessWidget {
  AnimationController controller;
  late Animation<double> _animation;

  AnimatedButton(this.controller) {
    this._animation =
        Tween<double>(begin: 300, end: 70).animate(this.controller);
  }

  Widget _buildButton(BuildContext context, Widget? child) {
    return Container(
      height: 60,
      width: _animation.value,
      child: ElevatedButton(
        style: ButtonStyle(

        ),
        onPressed: () {
          this.controller.forward();
        },
        child: (this._animation.value == 70 ? CircularProgressIndicator(color: Colors.white,) : Text("Login")),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: this.controller,
      builder: this._buildButton
    );
  }
}
