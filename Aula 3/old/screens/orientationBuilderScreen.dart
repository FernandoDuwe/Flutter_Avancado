import 'package:flutter/material.dart';

class OrientationBuilderScreen extends StatelessWidget {
  const OrientationBuilderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OrientationBuilder"),
      ),
      body: OrientationBuilder(
            builder: (context, orientation) {
              if (orientation == Orientation.portrait) {
                return Row(
                  children: [
                    Icon(Icons.screen_lock_landscape_outlined),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ConstrainedBox(
                          constraints: BoxConstraints(maxWidth: 300),
                          child: Text(
                              "Essa aplicação funciona melhor utilizando seu celular como paisagem")),
                    )
                  ],
                );
              } else {
                return ElevatedButton(onPressed: () {}, child: Text("Entrar"));
              }
            },
          ),
    );
  }
}
