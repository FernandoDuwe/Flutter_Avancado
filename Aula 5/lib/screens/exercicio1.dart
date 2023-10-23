import "package:flutter/material.dart";

class Exercicio1 extends StatefulWidget {
  const Exercicio1({super.key});

  @override
  State<Exercicio1> createState() => _Exercicio1State();
}

class _Exercicio1State extends State<Exercicio1> {
  int aspectWidth = 3;
  int aspectHeight = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercício 1 (${aspectWidth} / ${aspectHeight})"),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  aspectWidth = aspectWidth + 1;
                });
              },
              icon: Icon(Icons.width_full_outlined)),
          IconButton(
              onPressed: () {
                setState(() {
                  aspectHeight = aspectHeight + 1;
                });
              },
              icon: Icon(Icons.height)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: aspectWidth / aspectHeight,
              child: Image.network(
                "https://www.seiu1000.org/sites/main/files/main-images/camera_lense_0.jpeg",
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
            ),
            AspectRatio(
              aspectRatio: aspectWidth / aspectHeight,
              child: Image.network(
                "https://h5p.org/sites/default/files/h5p/content/1209180/images/file-6113d5f8845dc.jpeg",
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.fill,
              ),
            )
          ],
        ),
      ),
    );
  }
}
