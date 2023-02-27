import 'package:flutter/material.dart';

class AnimatedButton extends StatelessWidget {
  late AnimationController controller;
  late Animation<double> animation;

  AnimatedButton(AnimationController prController) {
    this.controller = prController;

    animation = Tween<double>(begin: 300, end: 70).animate(this.controller);
  }

  Widget _getButton(context, child) {
    return Container(
      height: 60,
      width: this.animation.value,
      child: ElevatedButton(
        onPressed: () => this.controller.forward(),
        child: (this.animation.value <= 70 ? CircularProgressIndicator(
          color: Colors.white,
        ) : Text("Login")),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: this.controller, builder: this._getButton);
  }
}
