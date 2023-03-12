import 'package:flutter/material.dart';

class MinhaPrimeiraAnimacaoScreen extends StatefulWidget {
  const MinhaPrimeiraAnimacaoScreen({Key? key}) : super(key: key);

  @override
  State<MinhaPrimeiraAnimacaoScreen> createState() =>
      _MinhaPrimeiraAnimacaoScreenState();
}

class _MinhaPrimeiraAnimacaoScreenState
    extends State<MinhaPrimeiraAnimacaoScreen> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();

    this.controller = AnimationController(vsync: this, duration: Duration(seconds: 3));

    animation = Tween<double>(begin: 0, end: 300).animate(controller);

    this.controller.addListener(() {
      setState(() {

      });
    });

    this.controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        this.controller.reverse();

        return;
      }

      if (status == AnimationStatus.dismissed) {
        this.controller.forward();

        return;
      }
    });

    this.controller.forward();
  }

  @override
  void dispose() {
    this.controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Minha Primeira Animação"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              color: Colors.pinkAccent,
              height: animation.value,
              width: animation.value,
            ),
            SizedBox(height: 50,),
            Text(this.animation.value.round().toString(), style: TextStyle(
              fontSize: 24
            ),)
          ],
        ),
      ),
    );
  }
}



