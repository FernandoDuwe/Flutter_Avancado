import "package:flutter/material.dart";

class OrientationBuilderExample extends StatelessWidget {
  const OrientationBuilderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Orientation Builder"),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return Center(
            child: Text(
              orientation == Orientation.portrait ? "Retrato" : "Paisagem",
              style: TextStyle(fontSize: 22),
            ),
          );
        },
      ),
    );
  }
}
