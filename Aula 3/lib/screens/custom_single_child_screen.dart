import "package:flutter/material.dart";
import "package:flutter_avancado_aula1/delegates/single_child_50_delegate.dart";
import "package:flutter_avancado_aula1/delegates/single_child_full_screen_delegate.dart";

class CustomSingleChildScreen extends StatelessWidget {
  const CustomSingleChildScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CustomSingleChildScreen"),
      ),
      body: CustomSingleChildLayout(
        delegate: SingleChild50Delegate(),
        child: Container(
          color: Colors.red,
        ),
      ),
    );
  }
}
