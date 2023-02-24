import 'package:flutter/material.dart';
import 'package:flutter_avancado_aula3/widgets/Layout3MultiDelegate.dart';

class CustomMultiChildLayoutScreen extends StatelessWidget {
  const CustomMultiChildLayoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CustomMultiChildLayoutScreen"),
      ),
      body: CustomMultiChildLayout(
        delegate: Layout3MultiDelegate(),
        children: [
          LayoutId(
            id: 1,
            child: Container(
              color: Colors.red,
            ),
          ),
          LayoutId(
            id: 2,
            child: Container(
              color: Colors.green
            ),
          ),
          LayoutId(
            id: 3,
            child: Container(
                color: Colors.blue
            ),
          )
        ],
      ),
    );
  }
}
