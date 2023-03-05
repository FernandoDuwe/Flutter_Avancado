import 'package:admin_test/screens/homeScreen.dart';
import 'package:admin_test/screens/loginScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      initialRoute: "/",
      routes: {
        "/": (context) => LoginScreen(),
        "/home": (context) => HomeScreen(),
      },
    );
  }
}
