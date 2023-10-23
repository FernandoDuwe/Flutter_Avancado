import "package:flutter/material.dart";

class MediaQueryExample extends StatelessWidget {
  const MediaQueryExample({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData data = MediaQuery.of(context);

    print(data.size);

    print(data.orientation);
    
    return Scaffold(
      appBar: AppBar(
        title: Text("MediaQuery"),
      ),
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          color: Colors.black12,
        ),
      ),
    );
  }
}
