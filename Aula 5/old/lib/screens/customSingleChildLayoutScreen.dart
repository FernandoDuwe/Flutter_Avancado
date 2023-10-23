import 'package:flutter/material.dart';
import 'package:flutter_avancado_aula4/widgets/CenterHalfSizeSingleChildLayoutDelegate.dart';
import 'package:flutter_avancado_aula4/widgets/FullScreenSingleChildLayoutDelegate.dart';

class CustomSingleChildLayoutScreen extends StatelessWidget {
  const CustomSingleChildLayoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CustomSingleChildLayout"),
      ),
      body: CustomSingleChildLayout(
        delegate: CenterHalfSizeSingleChildLayoutDelegate(),
        child: Container(
          color: Colors.black,
        ),
      )
    );
  }
}
