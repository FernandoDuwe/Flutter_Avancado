import 'package:contactlist_redux/screens/addContactScreen.dart';
import 'package:contactlist_redux/screens/homePage.dart';
import 'package:contactlist_redux/states/contactListState.dart';
import 'package:contactlist_redux/stores/contactListStore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {


  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // O StoreProvider será responsável por injetar nossa store dentro da árvore de widgets
    return StoreProvider(
        store: contactListStore,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark(),
          initialRoute: "/",
          routes: {
            "/": (context) => HomePage(),
            "/add": (context) => AddContactScreen(),
          },
        ));
  }
}
