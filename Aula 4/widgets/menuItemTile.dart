import 'package:flutter/material.dart';
import 'package:flutter_avancado_aula4/models/menuItemModel.dart';

class MenuItemTile extends StatelessWidget {
  final MenuItemModel model;

  const MenuItemTile({required this.model, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        (this.model.type == MenuItemType.example
            ? Icons.code
            : Icons.school_sharp),
        color: (this.model.type == MenuItemType.example
            ? Colors.blueAccent
            : Colors.green),
      ),
      title: Text(this.model.title),
      subtitle: Text(this.model.subtitle),
      onTap: () {
        Navigator.of(context).pushNamed(this.model.route);
      },
    );
  }
}
