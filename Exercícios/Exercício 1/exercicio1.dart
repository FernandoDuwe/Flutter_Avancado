import 'package:flutter/material.dart';

class Exercicio1 extends StatefulWidget {
  const Exercicio1({Key? key}) : super(key: key);

  @override
  State<Exercicio1> createState() => _Exercicio1State();
}

class _Exercicio1State extends State<Exercicio1> {

  List<String> images = [
    "https://www.seiu1000.org/sites/main/files/imagecache/hero/main-images/camera_lense_0.jpeg",
    "https://images.pexels.com/photos/33044/sunflower-sun-summer-yellow.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://cdn-media-2.freecodecamp.org/w1280/5f9c9a4c740569d1a4ca24c2.jpg",
  ];

  int width = 3;
  int height = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercício 1 - (${this.width} / ${this.height})"),
        actions: [
          IconButton(onPressed: () {
            setState(() {
              this.width++;
            });
          }, icon: Icon(Icons.width_normal_rounded)),
          IconButton(onPressed: () {
            setState(() {
              this.height++;
            });
          }, icon: Icon(Icons.height)),
        ],
      ),
      body: ListView.builder(
          itemCount: this.images.length,
          itemBuilder: (context, index) {
            return AspectRatio(
              aspectRatio: this.width / this.height,
              child: Image(
                image: NetworkImage(this.images[index]),
                fit: BoxFit.cover,
              ),
            );
          }),
    );
  }
}

