import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_example/stores/counterStore.dart';

final CounterStore counter = CounterStore();

class HomeCounter extends StatelessWidget {
  const HomeCounter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contador, só que top demais"),
        actions: [
          IconButton(onPressed: counter.incCounter, icon: Icon(Icons.add)),
          IconButton(onPressed: counter.decCounter, icon: Icon(Icons.remove))
        ],
      ),
      body: Observer(
        builder: (context) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Contador: ${counter.counter}"),
                SizedBox(
                  height: 30,
                ),
                Text("!Contador: ${counter.negativeCounter}",
                    style: TextStyle(color: Colors.blueGrey)),
              ],
            ),
          );
        },
      ),
    );
  }
}
