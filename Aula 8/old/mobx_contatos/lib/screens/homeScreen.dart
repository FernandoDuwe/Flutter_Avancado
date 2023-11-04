import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mobx_contatos/stores/counterStore.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CounterStore vrStore = Provider.of<CounterStore>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Contador"),
        actions: [
          IconButton(onPressed: vrStore.incCounter, icon: Icon(Icons.add)),
          IconButton(onPressed: vrStore.decCounter, icon: Icon(Icons.remove))
        ],
      ),
      body: Center(
        child: Observer(
          builder: (BuildContext context) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Contador: ${vrStore.counter}"),
                Text("!Contador: ${vrStore.notCounter}"),
              ],
            );
          },
        )
      ),
    );
  }
}