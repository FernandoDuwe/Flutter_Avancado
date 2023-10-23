import 'package:flutter/material.dart';
import 'package:flutter_avancado_aula4/widgets/animatedCar.dart';
import 'package:flutter_avancado_aula4/widgets/senoCurve.dart';

import '../widgets/animatedCar2.dart';

class CurvedScreen extends StatefulWidget {
  const CurvedScreen({Key? key}) : super(key: key);

  @override
  State<CurvedScreen> createState() => _CurvedScreenState();
}

class _CurvedScreenState extends State<CurvedScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 3));

    this.animation =
        CurvedAnimation(parent: this.controller, curve: SenoCurve(count: 3));

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Curves"),
      ),
      body: Container(
        height: 500,
        width: 500,
        child: AnimatedCar2(this.animation),
      ),
    );
  }
}
