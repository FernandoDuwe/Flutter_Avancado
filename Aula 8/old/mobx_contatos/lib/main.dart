import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mobx_contatos/screens/homeContactScreen.dart';
import 'package:mobx_contatos/screens/homeScreen.dart';
import 'package:mobx_contatos/stores/counterStore.dart';
import 'package:provider/provider.dart';
import 'package:mobx_contatos/stores/contactListStore.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider<ContactListStore>(
      create: (context) => ContactListStore(),
      child: Provider<CounterStore>(
        create: (context) => CounterStore(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: "/",
          routes: {
            "/": (context) => HomeContactScreen(),
          },
        ),
      ),
    );
  }
}
