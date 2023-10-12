import "package:flutter/material.dart";

class FittedBoxExample extends StatelessWidget {
  const FittedBoxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exemplo FittedBox"),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            height: 100,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [Text("Camera digital"), Text("R\$ 19,90")],
                ),
                Image.network(
                  "https://www.seiu1000.org/sites/main/files/main-images/camera_lense_0.jpeg",
                  height: 300,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
