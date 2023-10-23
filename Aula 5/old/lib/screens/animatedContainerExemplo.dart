import 'package:flutter/material.dart';

class AnimatedContainerExemplo extends StatefulWidget {
  const AnimatedContainerExemplo({Key? key}) : super(key: key);

  @override
  State<AnimatedContainerExemplo> createState() =>
      _AnimatedContainerExemploState();
}

class _AnimatedContainerExemploState extends State<AnimatedContainerExemplo> {
  double _size = 100;
  Color _color = Colors.green;
  double _radius = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedContainer"),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  this._size = this._size + 100;

                  this._radius += 10;
                });
              },
              icon: Icon(Icons.add)),
          IconButton(
              onPressed: () {
                setState(() {
                  this._size -= 100;

                  this._radius -= 10;
                });
              },
              icon: Icon(Icons.remove))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (this._color == Colors.green) {
              this._color = Colors.yellow;

              return;
            }

            if (this._color == Colors.yellow) {
              this._color = Colors.red;

              return;
            }

            if (this._color == Colors.red) {
              this._color = Colors.green;

              return;
            }
          });
        },
        child: Icon(Icons.color_lens_outlined),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          height: this._size,
          width: this._size,
          decoration: BoxDecoration(
            color: this._color,
            borderRadius: BorderRadius.circular(this._radius)
          ),
        ),
      ),
    );
  }
}
