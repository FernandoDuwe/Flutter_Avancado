import 'package:flutter/material.dart';

class FractionallySizedBoxScreen extends StatefulWidget {
  const FractionallySizedBoxScreen({Key? key}) : super(key: key);

  @override
  State<FractionallySizedBoxScreen> createState() => _FractionallySizedBoxState();
}

class _FractionallySizedBoxState extends State<FractionallySizedBoxScreen> {
  double _progress = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FractionallySizedBox"),
        actions: [
          IconButton(onPressed: () {
            setState(() {
              this._progress += 0.1;
            });
          }, icon: Icon(Icons.add)),
          IconButton(onPressed: () {
            setState(() {
              this._progress -= 0.1;
            });
          }, icon: Icon(Icons.exposure_minus_1))
        ],
      ),
      body: Center(
        child: FractionallySizedBox(
          heightFactor: 0.30,
          widthFactor: this._progress,
          child: Container(
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
