import "package:flutter/material.dart";

class FracSizedBox extends StatelessWidget {
  const FracSizedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fractionally SizedBox"),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            flex: 1,
            child: FractionallySizedBox(
              heightFactor: 1,
              widthFactor: 0.5,
              child: Container(
                color: Colors.blue,
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: FractionallySizedBox(
              heightFactor: 1,
              widthFactor: 0.5,
              child: Container(
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
