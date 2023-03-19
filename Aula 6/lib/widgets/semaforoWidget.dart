import 'package:flutter/material.dart';

class Semaforo extends StatefulWidget {
  const Semaforo({Key? key}) : super(key: key);

  @override
  State<Semaforo> createState() => _SemaforoState();
}

class _SemaforoState extends State<Semaforo> {
  Color corAtual = Colors.red;

  void _onClick() {
    setState(() {
      if (this.corAtual == Colors.red) {
        this.corAtual = Colors.green;

        return;
      }

      if (this.corAtual == Colors.green) {
        this.corAtual = Colors.purple;

        return;
      }

      if (this.corAtual == Colors.yellow) {
        this.corAtual = Colors.red;

        return;
      }
    });
  }

  String _getContainerKey() {
    if (this.corAtual == Colors.green)
      return "container_green";

    if (this.corAtual == Colors.yellow)
      return "container_yellow";

    if (this.corAtual == Colors.red)
      return "container_red";

    return "container";
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          key: ValueKey<String>(this._getContainerKey()),
          height: 120,
          width: 120,
          decoration:
              BoxDecoration(color: this.corAtual, shape: BoxShape.circle),
        ),
        SizedBox(
          width: 30,
        ),
        IconButton(
            key: ValueKey<String>("semaforo_clickButton"),
            onPressed: this._onClick, icon: Icon(Icons.run_circle_outlined))
      ],
    );
  }
}
