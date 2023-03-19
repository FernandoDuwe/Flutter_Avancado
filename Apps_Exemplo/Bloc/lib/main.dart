import 'package:bloc_exemplo/bloc/ContactBloc.dart';
import 'package:bloc_exemplo/screens/addContactScreen.dart';
import 'package:bloc_exemplo/screens/homePage.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        blocs: [Bloc((i) => ContactBloc())],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: "/",
          routes: {
            "/": (context) => HomePage(),
            "/add": (context) => AddContactScreen(),
          },
        ),
        dependencies: []);
  }
}
