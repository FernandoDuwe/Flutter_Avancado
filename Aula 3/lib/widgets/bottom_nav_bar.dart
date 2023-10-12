import 'package:flutter/material.dart';

typedef BottomNavBarOnChange = void Function(int currentIndex);

class BottomNavBar extends StatefulWidget {
  final BottomNavBarOnChange onChange;
  const BottomNavBar({ required this.onChange, super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (value) {
          widget.onChange(value);

          setState(() {
            _currentIndex = value;
          });
        },
        items: [
      BottomNavigationBarItem(icon: Icon(Icons.all_inclusive), label: "Todos"),
      BottomNavigationBarItem(icon: Icon(Icons.functions), label: "Exemplos"),
      BottomNavigationBarItem(icon: Icon(Icons.class_), label: "Exercícios")
    ]);
  }
}
