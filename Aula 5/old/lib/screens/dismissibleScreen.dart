import 'package:flutter/material.dart';

class DismissibleScreen extends StatefulWidget {
  const DismissibleScreen({Key? key}) : super(key: key);

  @override
  State<DismissibleScreen> createState() => _DismissibleScreenState();
}

class _DismissibleScreenState extends State<DismissibleScreen> {
  List<String> _notes = ["Asus K45A", "Acer XPTO", "Acer Nitro"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dismissible"),
        actions: [
          IconButton(onPressed: () {
            setState(() {

            });
          }, icon: Icon(Icons.refresh))
        ],
      ),
      body: ListView.builder(
        itemCount: this._notes.length,
        itemBuilder: (context, index) {
          return Dismissible(
              key: ValueKey<String>(this._notes[index]),
              background: Container(
                color: Colors.red,
                alignment: Alignment.topLeft,
                child: Icon(Icons.restore_from_trash_outlined),
              ),
              secondaryBackground: Container(
                color: Colors.green,
                alignment: Alignment.topRight,
                child: Icon(Icons.check_box_outlined),
              ),
              onDismissed: (direction) {
                this._notes.removeAt(index);
              },
              child: ListTile(
                title: Text(this._notes[index]),
              ));
        },
      ),
    );
  }
}
