import 'package:exercicio_21/widgets/calc_form.dart';
import 'package:exercicio_21/widgets/operation_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                  Colors.deepPurple,
                  Colors.purple,
                  Colors.purpleAccent
                ])),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Card(
                elevation: 50,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: CalcForm(),
                ),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: OperationWidget(),
    );
  }
}
