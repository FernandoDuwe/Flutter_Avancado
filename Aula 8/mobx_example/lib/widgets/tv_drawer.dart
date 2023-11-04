import 'package:flutter/material.dart';
import 'package:mobx_example/screens/login_screen.dart';

class TVDrawer extends StatelessWidget {
  const TVDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(child: Text("Aplicativo de TV")),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Página inicial"),
            subtitle: Text("Ir para a página inicial"),
            onTap: () => Navigator.of(context).pop(),
          ),
          ListTile(
            leading: Icon(Icons.security),
            title: Text("Efetuar login"),
            subtitle: Text("Tem conta? Efetue o login"),
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => LoginScreen(),
            )),
          )
        ],
      ),
    );
  }
}
