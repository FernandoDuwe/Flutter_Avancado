import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_example/screens/homeScreen.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: FirebaseOptions(apiKey: "AIzaSyC9PCEaOEQ_Swd2cEaHd-5duy-WSUSBVFk",
        appId: "1:210816929053:web:c890ca503cc4d95527a5f4",
        messagingSenderId: "210816929053",
        projectId: "exemploaula4-a5a54"),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => HomeScreen(),
      },
    );
  }
}