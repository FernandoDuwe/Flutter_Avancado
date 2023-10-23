import "package:flutter/material.dart";

class FlagContainer extends StatelessWidget {
  final bool value;

  const FlagContainer({required this.value, super.key});

  List<Color> _getGradientColors() {
    if (!value) return [Colors.redAccent, Colors.red];

    return [Colors.green, Colors.lightGreen];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: (value ? Alignment.centerRight : Alignment.centerLeft),
      height: 30,
      width: 50,
      child: Container(
        height: 28,
        width: 28,
        decoration:
            BoxDecoration(color: Colors.white70, shape: BoxShape.circle),
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
              colors: _getGradientColors(),
              begin: Alignment.topLeft,
              end: Alignment.bottomRight)),
    );
  }
}
