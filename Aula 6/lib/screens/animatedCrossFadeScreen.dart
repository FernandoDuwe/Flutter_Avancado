import 'package:flutter/material.dart';

class AnimatedCrossFadeScreen extends StatefulWidget {
  const AnimatedCrossFadeScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedCrossFadeScreen> createState() =>
      _AnimatedCrossFadeScreenState();
}

class _AnimatedCrossFadeScreenState extends State<AnimatedCrossFadeScreen> {
  bool _response = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedCrossFade"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            AnimatedCrossFade(
                firstChild: Container(
                  height: 200,
                  width: 200,
                  color: Colors.blue,
                  child: Icon(Icons.question_mark),
                ),
                secondChild: Container(
                    height: 300,
                    width: 300,
                    color: Colors.red,
                    child: Icon(Icons.delete_outline)),
                crossFadeState: (this._response
                    ? CrossFadeState.showSecond
                    : CrossFadeState.showFirst),
                duration: Duration(milliseconds: 500)),
            SizedBox(height: 100,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("Deseja excluir?"),
            ),
            ElevatedButton(onPressed: () {
              setState(() {
                this._response = true;
              });
            }, child: Text("Sim")),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: () {
              setState(() {
                this._response = false;
              });
            }, child: Text("Não")),
          ],
        ),
      ),
    );
  }
}
