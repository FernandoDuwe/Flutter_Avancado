import 'package:flutter/material.dart';
import 'package:flutter_avancado_aula1/widgets/login_widget.dart';

class TestLoginScreen extends StatelessWidget {
  const TestLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Teste: Login"),
      ),
      body: LoginWidget(),
    );
  }
}
