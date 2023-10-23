import "package:flutter/material.dart";

class CounterWidget extends StatefulWidget {
  final bool permiteValorNegativo;

  const CounterWidget({required this.permiteValorNegativo, super.key});

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int count = 0;

  void _decrement() {
    setState(() {
      count--;
    });
  }

  void _increment() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    bool desabilitarDecremento = (!widget.permiteValorNegativo) && (count <= 0);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            count.toString(),
            style: TextStyle(color: (count < 0 ? Colors.red : null), fontSize: 18),
          ),
        ),
        IconButton(
            onPressed: desabilitarDecremento ? null : _decrement,
            icon: Icon(Icons.remove)),
        IconButton(onPressed: _increment, icon: Icon(Icons.add))
      ],
    );
  }
}
