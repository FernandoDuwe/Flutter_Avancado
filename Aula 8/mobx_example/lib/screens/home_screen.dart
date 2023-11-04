import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_example/stores/counter_store.dart';
import 'package:mobx_example/widgets/tv_drawer.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("Meu aplicativo de TV"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      extendBodyBehindAppBar: true,
      drawer: TVDrawer(),
      body: Stack(
        children: [
          Observer(
            builder: (context) {
              if (Provider.of<CounterStore>(context).countIsNegative)
                return Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.redAccent, Colors.red])),
                );

              if (Provider.of<CounterStore>(context).countIsPositive)
                return Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.greenAccent, Colors.green])),
                );

              return Container();
            },
          ),
          Observer(
            builder: (context) {
              return Center(
                child: Text(
                  Provider.of<CounterStore>(context).count.toString(),
                  style: TextStyle(fontSize: 36),
                ),
              );
            },
          ),
          Positioned(
            top: 10,
            right: 10,
            child: Icon(Icons.numbers, size: 64),
          ),
        ],
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: Provider.of<CounterStore>(context).increment),
          SizedBox(
            width: 20,
          ),
          FloatingActionButton(
            child: Icon(Icons.remove),
            onPressed: Provider.of<CounterStore>(context).decrement,
          )
        ],
      ),
    );
  }
}
