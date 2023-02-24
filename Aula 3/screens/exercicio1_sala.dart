import 'package:flutter/material.dart';
import 'package:flutter_avancado_aula3/main.dart';

class Exercicio1Sala extends StatefulWidget {
  const Exercicio1Sala({Key? key}) : super(key: key);

  @override
  State<Exercicio1Sala> createState() => _Exercicio1SalaState();
}

class _Exercicio1SalaState extends State<Exercicio1Sala> {
  List<String> _images = [
    "https://www.seiu1000.org/sites/main/files/imagecache/hero/main-images/camera_lense_0.jpeg",
    "https://images.pexels.com/photos/33044/sunflower-sun-summer-yellow.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://cdn-media-2.freecodecamp.org/w1280/5f9c9a4c740569d1a4ca24c2.jpg",
  ];

  int ratioWidth = 3;
  int ratioHeight = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercício - Sala (${this.ratioWidth} / ${this.ratioHeight})"),
        actions: [
          IconButton(onPressed: () {
            setState(() {
              this.ratioWidth++;
            });
          }, icon: Icon(Icons.width_normal)),
          IconButton(onPressed: () {
            setState(() {
              this.ratioHeight++;
            });
          }, icon: Icon(Icons.height))
        ],
      ),
      body: ListView.builder(
        itemCount: this._images.length,
        itemBuilder: (context, index) => AspectRatio(
            aspectRatio: this.ratioWidth / this.ratioHeight,
          child: Image(
            image: NetworkImage(this._images[index]),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
