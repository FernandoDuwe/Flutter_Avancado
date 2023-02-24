import 'package:flutter/material.dart';

class FittedBoxScreen extends StatelessWidget {
  const FittedBoxScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FittedBox"),
      ),
      body: Container(
        height: 150,
        width: double.infinity,
        child: FittedBox(
          fit: BoxFit.cover,
          alignment: Alignment.topLeft,
          child: Row(
            children: [
              Column(
                children: [Text("Teste 1"), Text("Teste 2 asjdasjbd sajhdjashdsja")],
              ),
              Image.network(
                  "https://www.seiu1000.org/sites/main/files/imagecache/hero/main-images/camera_lense_0.jpeg")
            ],
          ),
        ),
      ),
    );
  }
}
