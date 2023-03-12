import 'package:exercicio17/screens/EditUser.dart';
import 'package:exercicio17/screens/homeScreen.dart';
import 'package:exercicio17/screens/loginScreen.dart';
import 'package:exercicio17/stores/userStore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreProvider(
        store: userStore,
        child: MaterialApp(
          navigatorKey: userStore.state.navigatorkey,
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark(),
          initialRoute: "/",
          routes: {
            "/": (context) => LoginScreen(),
            "/home": (context) => HomeScreen(),
            "/myUser": (context) => EditUser(),
          },
        ));
  }
}
