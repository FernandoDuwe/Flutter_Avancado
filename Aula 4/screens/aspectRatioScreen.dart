import 'package:flutter/material.dart';

class AspectRatioScreen extends StatelessWidget {
  const AspectRatioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AspectRatio"),
      ),
      body: AspectRatio(
        aspectRatio: 16 / 9,
        child: Container(
          color: Colors.blue,
        ),
      ),
    );
  }
}
