import 'package:flutter/material.dart';

class FractionallyTeste2 extends StatelessWidget {
  const FractionallyTeste2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FractionallySizedBox 2"),
      ),
      body: Column(
        children: [
          Flexible(
            flex: 1,
            child: FractionallySizedBox(
              heightFactor: 1,
              child: Container(
                color: Colors.blue,
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: FractionallySizedBox(
              heightFactor: 1,
              child: Container(
                color: Colors.amberAccent,
              ),
            ),
          )
        ],
      ),
    );
  }
}
