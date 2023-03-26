import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_firebase_login/stores/statsStore.dart';

StatsStore vrStore = StatsStore();

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Página inicial"),
      ),
      body: Center(
        child: ListView(
          children: [
            Card(
              child: Observer(
                builder: (context) => Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text("Contador: ${vrStore.counter}",
                      style: TextStyle(fontSize: 18)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
