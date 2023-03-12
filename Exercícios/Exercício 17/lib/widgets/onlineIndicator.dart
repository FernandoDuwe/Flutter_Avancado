import 'package:flutter/material.dart';

class OnlineIndicator extends StatelessWidget {
  final bool isOnline;

  const OnlineIndicator({required this.isOnline, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 20,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: (this.isOnline ? Colors.lightGreenAccent : Colors.red),
          shape: BoxShape.circle),
    );
  }
}
