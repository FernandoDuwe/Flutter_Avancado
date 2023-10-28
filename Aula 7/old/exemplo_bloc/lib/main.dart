import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:exemplo_bloc/blocs/contactBloc.dart';
import 'package:exemplo_bloc/screens/homePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      blocs: [
        Bloc((i) => ContactBloc())
      ],
      dependencies: [],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: "/",
        routes: {
          "/": (context) => HomePage(),
        },
      ),
    );
  }
}
