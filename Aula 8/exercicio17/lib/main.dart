import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:exercicio17/blocs/postsBloc.dart';
import 'package:exercicio17/screens/homePage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyBZUi9vSLvNOn3QzOVLzgZBKqaK1KLu0Kk",
          appId: "1:833591765609:web:51514ccba5f8d4203290f8",
          messagingSenderId: "833591765609",
          projectId: "prowaytwitter"));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      blocs: [
        Bloc((i) => PostsBloc()),
      ],
      dependencies: [],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(
          useMaterial3: true
        ),
        initialRoute: "/",
        routes: {
          "/": (context) => HomePage(),
        },
      ),
    );
  }
}
