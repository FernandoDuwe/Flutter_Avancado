import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Página inicial"),
        actions: [
          IconButton(
              key: ValueKey<String>("home_button_logoff"),
              onPressed: () {
                Navigator.of(context).pushReplacementNamed("/");
              },
              icon: Icon(
                Icons.logout,
                color: Colors.red,
              ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        key: ValueKey<String>("home_button_add"),
        onPressed: () {
          setState(() {
            this._counter++;
          });
        },
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
          key: ValueKey<String>("home_list"),
          itemCount: this._counter,
          itemBuilder: (context, index) {
            return ListTile(
              key: ValueKey<String>("home_item${index}"),
              title: Text("Item ${index + 1}"),
              subtitle: Text("Item selecionável"),
              leading: Icon(Icons.receipt_long),
              trailing: Icon(Icons.more_horiz),
            );
          }),
    );
  }
}
