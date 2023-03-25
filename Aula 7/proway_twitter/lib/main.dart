import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:proway_twitter/bloc/postBloc.dart';
import 'package:proway_twitter/screens/homeScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyBZUi9vSLvNOn3QzOVLzgZBKqaK1KLu0Kk",
          appId: "1:833591765609:web:9b2bd255bae6815a3290f8",
          messagingSenderId: "833591765609",
          projectId: "prowaytwitter"));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      dependencies: [],
      blocs: [
        Bloc((i) => PostBloc())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: "/",
        routes: {
          "/": (context) => HomeScreen(),
        },
      ),
    );
  }
}
