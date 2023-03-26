import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mobx_firebase_login/screens/createUserScreen.dart';
import 'package:mobx_firebase_login/screens/homeScreen.dart';
import 'package:mobx_firebase_login/screens/loginScreen.dart';
import 'package:mobx_firebase_login/stores/userStore.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: FirebaseOptions(
        apiKey: "AIzaSyC9PCEaOEQ_Swd2cEaHd-5duy-WSUSBVFk",
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
      theme: ThemeData.dark(),
      initialRoute: "/",
      routes: {
        "/": (context) => LoginScreen(),
        "/newUser": (context) => CreateUserScreen(),
        "/home": (context) => HomeScreen(),
      },
    );
  }
}
