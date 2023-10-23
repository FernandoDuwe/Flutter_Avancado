import "package:flutter/material.dart";

class AnimacaoScreen extends StatefulWidget {
  const AnimacaoScreen({super.key});

  @override
  State<AnimacaoScreen> createState() => _AnimacaoScreenState();
}

class _AnimacaoScreenState extends State<AnimacaoScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;
  late Animation<double> animation2;

  // Quando o objeto for adicionado na árvore
  @override
  void initState() {
    super.initState();

    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 5));

    animation = Tween<double>(begin: 0, end: 300).animate(animationController);
    animation2 = Tween<double>(begin: 500, end: 100).animate(animationController);

    animationController.addListener(() {
      print(animationController.value);

      setState(() {

      });
    });

    animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed)
        animationController.reverse();

      if (status == AnimationStatus.dismissed)
        animationController.forward();
    });
  }

  // Quando meu objeto for removido da árvore
  @override
  void dispose() {
    animationController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animações 1"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: animation.value,
              width: animation.value,
              color: Colors.blue,
            ),
            Container(
              height: animation2.value,
              width: animation2.value,
              color: Colors.orange,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => animationController.forward(),
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
