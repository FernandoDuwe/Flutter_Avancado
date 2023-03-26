import 'package:flutter/material.dart';
import 'package:mobx_example/screens/homeCounter.dart';
import 'package:mobx_example/screens/homePage.dart';
import 'package:mobx_example/stores/contactListStore.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider<ContactListStore>(
      create: (context) => new ContactListStore(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: "/counter",
          routes: {
            "/": (context) => HomePage(),
            "/counter": (context) => HomeCounter(),
          }),
    );
  }
}
