import 'package:flutter/material.dart';
import 'package:flutter_avancado_aula1/delegates/multi_child_example_delegate.dart';

class CustomMultiChildLayoutScreen extends StatelessWidget {
  const CustomMultiChildLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("CustomMultiChildLayout"),
      ),
      body: CustomMultiChildLayout(
        delegate: MultiChildExampleDelegate(),
        children: [
          LayoutId(id: 1, child: Container(
            color: Colors.red,
            child: Text("Child 1"),
          )),
          LayoutId(id: 2, child: Container(
            color: Colors.green,
            child: Text("Child 2"),
          )),
          LayoutId(id: 3, child: Container(
            child: Text("Child 3"),
            color: Colors.blue,
          ))
        ],
      ),
    );
  }
}
